"""Code generator which aims at automating idenfitied patterns.
"""
abstract type CodeGenerator end

generate(cgs::CodeGenerator) = ""
compose(cgs::CodeGenerator...) = join((generate.(cgs)), "\n")

vk_stype(vk_type) = getproperty(vk, Symbol("VK_STRUCTURE_TYPE_" * convert(SnakeCaseUpper, CamelCaseUpper(vk_type)).value))
vk_stype_createinfo(vk_type) = getproperty(vk, Symbol("VK_STRUCTURE_TYPE_" * convert(SnakeCaseUpper, CamelCaseUpper(vk_type)).value * "_CREATE_INFO"))

struct FunctionWrapper{P <: CallPattern} <: CodeGenerator
    sig::Signature
    pat::P
end

function generate(fw::FunctionWrapper{<: CreateInfo})
    margs = fw.sig.names
    vk_createinfo_enum = getproperty(vk, Symbol("VK_STRUCTURE_TYPE_$(uppercase(snake_case(split_camel(vk_type))))_CREATE_INFO"))
    """
create_info = VkCreateInfo$vk_type($vk_createinfo_enum, $margs)
    """
end

function generate(fw::FunctionWrapper{<: Create})
    margs = Signature(fw.m).names
    vk_type = replace(fw.m.name, "vkCreate" => "")
    gen_margs = filter(margs) do arg
        !occursin("CreateInfo", arg) && !startswith(arg, "p" * type_name) && !in(arg, instance_names)
    end
    """
ptr = Ref{Vk$vk_type}()
@check vkCreate$vk_type(Ref(create_info), allocator, ptr)
    """
    # function $vk_type($create_args)
    #     ptr[]
    # end
end

struct ConstructorWrapper <: CodeGenerator
    vk_type
    fw::FunctionWrapper
end

struct StructWrapper <: CodeGenerator
    vk_type::Symbol
end

struct StructDetails
    vk_type::Symbol
    vt_base::String
    vt_eval
    ptrtype::Bool
    create_infos
end

function StructDetails(vk_type)
    vt_base = remove_vk_prefix(String(Symbol(vk_type)))
    vt_eval = getproperty(vk, vk_type)
    ptrtype = hasfinalizer(vt_base)
    isptr = vt_eval <: Ptr
    create_infos = !isptr ? nothing : match(CreateInfo(), Symbol(vt_base))
    StructDetails(vk_type, vt_base, vt_eval, ptrtype, create_infos)
end

indent(str, n=4) = " "^n * str

struct AttachedArgument <: Argument
    f::Function
    kwarg::KeywordArgument
end

AttachedArgument(f, arg::KeywordArgument) = AttachedArgument(f, KeywordArgument(arg.identifier, arg.default))
attach(f, arg::KeywordArgument) = AttachedArgument(f, arg)
iskwarg(arg) = typeof(arg) <: Argument && !isnothing(arg.default)
isarg(arg) = typeof(arg) <: Argument && !iskwarg(arg)

"""Arguments that can be inferred from a function call.
"""
abstract type InferredParameter end

mutable struct StructSType <: InferredParameter
    value
end

StructSType() = StructSType(nothing)
infer!(ip::StructSType, data::StructDetails) = ip.value = String(Symbol(vk_stype(data.vk_type)))

isspliceable(x) = x ∈ keys(spliced_parameters)

splice(x) = String(x)
splice(x::AbstractString) = x
splice(ip::InferredParameter) = @assert !isnothing(ip.value) && ip.value
splice(fa::KeywordArgument) = isnothing(fa.default) ? "$(fa.symbol)" : "$(fa.symbol)=$(fa.default)"
function splice(s::Symbol, data)
    arg = isspliceable(s) ? spliced_parameters[s] : KeywordArgument(s)
    typeof(arg) <: InferredParameter ? infer!(arg, data) : nothing
    splice(arg)
end
splice(sig::Signature, data) = splice.(argnames(sig), Ref(data))
splice(m::Method, data) = splice(Signature(m), data)

splice!(varnames, arg...) = splice(arg...)
function splice!(varnames, arg::Argument)
    push!(varnames, arg.symbol)
    splice(arg)
end

function splice!(varnames, s::Symbol, data)
    arg = isspliceable(s) ? spliced_parameters[s] : KeywordArgument(s)
    typeof(arg) <: InferredParameter ? infer!(arg, data) : nothing
    splice!(varnames, arg)
end

splice!(varnames, sig::Signature, data) = splice!.(Ref(varnames), argnames(sig), Ref(data))
splice!(varnames, m::Method, data) = splice!(varnames, Signature(m), data)

wrapped_parameters = Dict(
    :pNext => KeywordArgument(:next, "C_NULL"),
    :flags => KeywordArgument(:flags, 0),
)

spliced_parameters = Dict(
    :pAllocator => "C_NULL",
    :sType => StructSType(),
)

is_pointer_from_name(x) = !isnothing(match(r"p[p|A-Z]", x))
add_deps!(fields) = any(is_pointer_from_name.(fields)) ? push!(fields, "deps") : nothing

function definition(sd::StructDetails)
    def = (sd.ptrtype ? "mutable struct" : "struct") * " $(sd.vt_base)"
    if sd.ptrtype
        fields = [:handle]
        if !isnothing(sd.create_infos)
            create_info_fields = argnames(Signature(first(match(CreateInfo(), Symbol(sd.vt_base), max_matches=1)))) |> Filter(x -> !(x ∈ keys(spliced_parameters) || x ∈ keys(wrapped_parameters)))
            append!(fields, create_info_fields)
        end
    else
        fields = argnames(Signature(first(methods(sd.vt_eval))))
    end
    fields = String.(fields)
    add_deps!(fields)
    fields_indent = join(indent.(fields), "\n")
    """
    $def
    $fields_indent
    end
    """
end

join_args(args) = join(args, ", ")

abstract type Wrappable end

struct PointerArgument <: Wrappable
    id_sym::Symbol
    value_sym::Symbol
end

struct FetchArray <: Wrappable
    f_sym::Symbol
    type::Symbol
    arg_names
end

struct Finalization <: Wrappable
    vt_base::AbstractString
end

Finalization(sym::Symbol) = Finalization(remove_vk_prefix(String(sym)))

function wrap!(fnames, f::FetchArray)
    fname = String(enforce_convention(f.f_sym, vulkan_to_julia, :function))
    push!(fnames, remove_vk_prefix(fname, SnakeCase))
    """
    count = Ref{UInt32}(0)
    @ckeck $(f.f_sym)($(join_args([f.arg_names..., "count", "C_NULL"])))
    arr = Array{$(f.type)}(undef, count[])
    @check $(f.f_sym)($(join_args([f.arg_names..., "count", "arr"])))

    arr"""

end

"""Wraps a Vulkan pointer argument to a ref.
"""
function wrap!(varnames, arg::PointerArgument; deps_variable="deps", suffix="_ref")
    varname = String(enforce_convention(arg.id_sym, vulkan_to_julia, :variable, pickout_parts=[1]))
    push!(varnames, Symbol(varname * suffix))
    """
    $varname = $(arg.value_sym)
    $(varname)_ref = Ref($varname)
    push!(deps, $(varname)_ref)"""
end

function construction(sd::StructDetails)
    vk_fields = fieldnames(sd.vt_eval)
    parameters = vk_fields |> Filter(x -> x ∈ keys(wrapped_parameters)) |> Map(x -> wrapped_parameters[x]) |> collect
    def_args = splice.(filter(isarg, parameters))
    def_kwargs = splice.(filter(iskwarg, parameters))
    vt_base_jl = enforce_convention(Symbol(sd.vt_base), vulkan_to_julia, :struct)
    def = "function $vt_base_jl($(join_args(def_args)); $(join_args(def_kwargs)))"

    def
end

function wrap!(varnames, f::Finalization)
    vk_finalizer_sym = first(match(Finalizer(), Symbol(f.vt_base), max_matches=1))
    vk_finalizer = first(methods(getproperty(vk, vk_finalizer_sym)))
    args = splice!(varnames, vk_finalizer, nothing)
    x = convert(SnakeCaseLower, CamelCaseUpper(f.vt_base)).value
    args[findfirst(args .== convert(CamelCaseLower, SnakeCaseLower(x)).value)] = "x.handle"
    @assert !any(isnothing.(args)) "$args"
    """
    Base.finalizer(x -> $(vk_finalizer.name)($(join(args, ", "))), $x)
    """
end

function generate(sw::StructWrapper)
    vt_base = remove_vk_prefix(String(Symbol(sw.vk_type)))
    def = hasfinalizer(vt_base) ? "mutable struct" : "struct"
    vt_eval = getproperty(vk, sw.vk_type)
    isptr = vt_eval <: Ptr
    if isptr
        create_info_f = first(match(CreateInfo(), vt_base, max_matches=1))
        ci_sig = Signature(Symbol(create_info_f))
        vk_fields = [ci_sig.names..., "handle", "deps"]
    else
        vk_fields = Signature(first(methods(vt_eval))).names
    end

    fields = getproperty.(convert.(Ref(SnakeCaseLower), CamelCaseLower.(vk_fields)), :value)
    """
$def
$(join(indent.(fields), "\n"))
end
"""
end

function hasfinalizer(vk_type)
    hasproperty(vk, Symbol("vkDestroy$vk_type"))
end

function generate(cw::ConstructorWrapper)
    constructor = compose(cw.wrappers...)
    """
    function $(cw.vk_type)()
    $constructor
    """
    
end


struct Struct <: CodeGenerator
    name::Symbol
    is_mutable::Bool
    fields::Dict{Symbol,Any}
end

struct Func <: CodeGenerator
    name::Symbol
    signature::Signature
    inline::Bool
    body::AbstractString
end

function generate(s::Struct)
    def = (s.is_mutable ? "mutable " : "") * "struct"
    fields = String.(fields)
    fields_indent = join(indent.(fields), "\n")
    """
    $def
    $fields_indent
    end
    """
end

function generate(f::Func)
    if f.inline
        generate(f.signature) * " = " * f.body
    else
        """
        function $(generate(f.signature))
            $(f.body)
        end"""
    end
end

# function generate(fw::FunctionWrapper{<: Struct}, vk_type)
#     # vk_type = startswith(vk_type, "Vk") ? replace(vk_type, "Vk" => "") : vk_type
#     create_func = "vkCreate$vk_type"
#     constructor = hasproperty(vk, Symbol(create_func)) ? generate(FunctionWrapper(Symbol(create_func)), vk_type) : 
#     func_arg_names = Signature(create_fun)
#     func_args = filter(func_arg_names) do arg
#         !occursin("CreateInfo", arg) && !startswith(arg, "p" * type_name) && !in(arg, instance_names)
#     end
#     struct_def = is_vktype_mutable(vk_type) ? "mutable struct" : "struct"
#     crfun_novk = replace(string(create_fun), "vk" => "")
#     instance_name_noprefix = replace(crfun_novk, "Create" => "")
#     instance_name = "Vk" * replace(instance_name_noprefix in keys(create_fun_to_types_exceptions) ? create_fun_types_exceptions[instance_name_noprefix] : instance_name_noprefix, "Create" => "")
#     create_args = map(func_arg_names) do arg
#         if occursin("CreateInfo", arg)
#             return :create_info
#         end
#         if startswith(arg, "p" * type_name) || in(arg, instance_names)
#             return :instance_ptr
#         end
#         arg
#     end
#     expr = """
# \"\"\"
# Convenience struct for `$vk_type`. CreateInfo structures are replaced with constructor parameters.
# \"\"\"

# $struct_def $vk_type

# function $vk_type($(join(func_args, ", ")), create_info_args::Tuple)
#     instance_ptr = Ref{vk.$instance_name}()
#     create_info = VkCreateInfo$instance_name($create_type, create_info_args)
#     @check vk.$(create_fun)($(join(create_args, ", ")))
#     instance_ptr[]
# end
# """
#     println(io, expr)
# end
    