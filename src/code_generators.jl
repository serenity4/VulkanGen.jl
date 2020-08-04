"""Code generator which aims at automating idenfitied patterns.
"""
abstract type CodeGenerator end

generate(cgs::CodeGenerator) = ""
compose(cgs::CodeGenerator...) = join((generate.(cgs)), "\n")

struct FunctionWrapper{P <: CallPattern} <: CodeGenerator
    m::Method
    pat::P
end

assigned_variables(::CodeGenerator) = ()
assigned_variables(::FunctionWrapper{<:CreateInfo}) = ("create_info",)
assigned_variables(::FunctionWrapper{<:Create}) = ("ptr", "inst")

referenced_variables(::CodeGenerator) = ()
referenced_variables(fw::FunctionWrapper) = Signature(fw.m).names


"""Check whether the code generators assign common names and therefore overwrite variables.
"""
function check_conflicting_names(cgs::CodeGenerator...)
    names = [(assigned_variables.(cgs)...)...]
    unames = unique(names)
    names == unames || @warn "Composing code generators with conflicting names $(getindex.(Ref(names), findall([count(names .== name) for name in unames] .> 1)))"
    unames
end

function generate(fw::FunctionWrapper{<: CreateInfo})
    margs = Signature(fw.m).names
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
    wrappers::AbstractArray{<: CodeGenerator}
end

struct StructWrapper <: CodeGenerator
    vk_type
    cw::ConstructorWrapper
end


function StructWrapper(vk_type)
    StructWrapper(vk_type, pattern(vk_type))
end

function hasfinalizer(vk_type)
    hasproperty(vk, Symbol("vkDestroy$vk_type)"))
end

function generate(cw::ConstructorWrapper)
    constructor = compose(cw.wrappers...)
    """
    function $(cw.vk_type)()
    $constructor
    """
    
end

function generate(sw::StructWrapper)
    vk_constructor = first(methods(apply_convention(sw.vk_type, StructConvention())))
    struct_sig = Signature(vk_constructor)
    struct_def = (hasfinalizer(sw.vk_type) ? "mutable " : "") * "struct $(sw.vktype) $(join(struct_sig.names, "\n"))"
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
    