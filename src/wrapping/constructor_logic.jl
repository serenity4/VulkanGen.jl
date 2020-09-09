function constructor(api, new_sdef, sdef)
    defs, keys = [], []
    if is_enumerated_property(sdef.name) || (is_handle(sdef.name) && !is_handle_with_create_info(sdef.name))
        push!(defs, conversion(api, new_sdef, sdef, ConvertVkStructure()))
    end
    if !is_enumerated_property(sdef.name)
        if is_handle(sdef.name)
            # cons = constructor(api, new_sdef, sdef, ConstructorWithCreateInfo())
        else
            cons = constructor(api, new_sdef, sdef, GenericConstructor())
            push!(defs, cons)
        end
    end
    defs, constructor_key.(Ref(sdef), is_conversion.(defs))
end

function constructor_key(sdef, is_conversion)
    fname = sdef.name
    if is_conversion
        if is_handle(fname)
            "convert_handle_" * (occursin("Type{Ptr{Nothing}}", fname) ? "opaque_" : "") * fname
        else
            "convert_" * fname
        end
    else
        fname
    end
end

function wrap_constructor!(w_api, api, new_sdef, sdef)
    defs, keys = constructor(api, new_sdef, sdef)
    for (def, key) ∈ zip(defs, keys)
        w_api.funcs[key] = def
    end
end

"""
Pass type used to build the body of a function.

For each field of a structure, passes are layed out on top of one another to construct statements, that will define a major part of a constructor function body. All passes operate from a common set of parameters bundled in a PassArgs structure.

Passes that are triggered upon a field yield one or more statements.
"""
abstract type Pass end
struct TranslateVkTypesBack <: Pass end
struct ComputeLengthArgument <: Pass end
struct ReplaceStructureType <: Pass end
struct ConvertArrays <: Pass end
@preprocess_pass struct AutomateCreateInfo <: Pass
    create_info_sdef
    create_info_new_sdef
    pass!
end

@preprocess_pass struct TranslateVkTypes <: Pass
    converted_arg_namespace
    pass!
end

@preprocess_pass struct TakeConversionArgsFromVkVar <: Pass
    vk_var_name
    pass!
end

@preprocess_pass struct DefineSelfPointers <: Pass
    new_sname
    pass!
end
struct GeneratePointers <: Pass end

@preprocess_pass struct AddDefaults <: Pass
    opt_params
    pass!
end

@with_kw mutable struct PassArgs
    name
    type
    new_name
    new_type
    sdef
    fdef
    count_arg
    array_arg
    last_name
    tmp_name
    passes
    sname
end

struct PassResult{T <: Pass}
    pass::T
    pass_args::PassArgs
    is_triggered::Bool
end

PassResult(pass::Pass, pass_args::PassArgs) = PassResult(pass, pass_args, is_triggered(typeof(pass), pass_args))

# take the vulkan ID symbol if assigned, else take the julian ID symbol e.g. if pAllocator is assigned to the julian name allocator then return pAllocator; else, return allocator
function last_argname(body, id, fallback)
    id_list = getproperty.(body, :assigned_id)
    id ∈ id_list ? id : fallback
end

function tmp_argname(name, type)
    new_name = fieldname_transform(name, type)
    name == new_name ? "_" * new_name : name
end

abstract type ConstructorDefinition end
struct GenericConstructor <: ConstructorDefinition end
struct CreateVkHandle <: ConstructorDefinition end
struct ConstructorWithCreateInfo <: ConstructorDefinition end

abstract type ConversionDefinition end
struct ConvertVkStructure <: ConversionDefinition end

is_conversion(def) = startswith("Base.convert", def.name)



preprocess_pass(pass_type::Type{T}; kwargs...) where {T <: Pass} = (pass_args, T) -> pass!(pass_args, T; kwargs...)

function annotate_pass(statements, pass)
    body_statements = getproperty.(statements, :body)
    Statement.(rstrip.(body_statements, '\n') .* "    # $(typeof(pass).name)" .* map(x -> endswith(x, "\n") ? "\n" : "", body_statements), getproperty.(statements, :assigned_id))
end

function inline_getproperty(name, type, sname)
    (name == "sType" || is_enum(type) || is_bitmask(type) || is_base_type(type) || is_base_type(converted_type(fieldtype_transform(name, type, sname))) || is_optional_parameter(name, sname)) && return ""
    is_handle(type) && return ".handle"
    is_vulkan_type(type) && return ".vk"
    ""
end

function init_args(pass_results, body; use_all_args=true, take_property=true)
    args = String[]
    for (name, pr_list) ∈ pass_results
        pass_args = last(pr_list).pass_args
        @unpack tmp_name, new_name, type, new_type, sname = pass_args
        if (!any(values(pass_args.passes)) || use_all_args)
            push!(args, last_argname(body, tmp_name, new_name) * (take_property ? inline_getproperty(name, type, sname) : ""))
        end
    end
    args
end

is_enabled(pass::Type{T}, args::PassArgs) where {T <: Pass} = any(isa.(Ref(T), keys(args.passes)))
is_triggered(pass::Type{T}, args::PassArgs) where {T <: Pass} = is_enabled(pass, args) && args.passes[pass]

pass_new_nametype(::Type{SDefinition}) = (name, type, sname) -> (fieldname_transform(name, type), fieldtype_transform(name, type, sname))

function constructor(api, new_sdef, sdef, definition::GenericConstructor)
    kwargs, opt_params = parameters(api, sdef)
    args = filter(x -> x.name ∉ ["vk", getproperty.(kwargs, :name)...], arguments(api, sdef))
    vk_sig = Signature(sdef)
    passes = [AddDefaults(opt_params), TranslateVkTypesBack(), ComputeLengthArgument(), ReplaceStructureType(), DefineSelfPointers(new_sdef.name), ConvertArrays(), GeneratePointers()]
    body, pass_results = accumulate_passes(sdef.name, vk_sig, pass_new_nametype(SDefinition), passes, common_pass_kwargs=(; sdef))
    vk_args = init_args(pass_results, body, use_all_args=true, take_property=true)
    default_co_sig = Signature(new_sdef)
    co_sig = Signature(new_sdef.name, args, kwargs)
    ptr_args = filter(arg -> pass_results[arg][findfirst(x -> x isa GeneratePointers, passes)].is_triggered, argnames(vk_sig))
    final_argnames = map(x -> x ∈ ptr_args ? "$x[]" : x, argnames(default_co_sig))
    push!(body, Statement("vk = $(vk_sig.name)($(join_args(vk_args)))\n", "vk"))
    push!(body, Statement("$(default_co_sig.name)($(join_args(final_argnames)))", nothing))
    FDefinition(new_sdef.name, co_sig, length(body) == 1, body, "GenericConstructor")
end

function constructor(api, new_sdef, sdef, ::CreateVkHandle; create_info_sdef, create_fun_fdef)
    create_info_var = last(handle_creation_info[sdef.name])
    create_fun_sig = create_fun_fdef.signature
    kwargs_info, _ = parameters(create_info_sdef)
    args_info = arguments_from_fields(create_info_sdef)
    kwargs = [kwargs_info..., KeywordArgument("pAllocator", "C_NULL")]
    new_sig = Signature(new_sdef.name, args_info, kwargs)
    create_info_sig = Signature(create_info_sdef)
    name = nc_convert(SnakeCaseLower, sdef.name)
    body = []
    push!(body, Statement("$name = Ref{$(sdef.name)}()", name))
    push!(body, Statement("$create_info_var = $(create_info_sig.name)($(join_args(argnames(create_info_sig))))", nothing))
    push!(body, Statement("@check $(create_fun_sig.name)($(join_args(argnames(create_fun_sig))))", nothing))
    # push!(body, Statement("Base.finalize($create_fun_sig", nothing))
    push!(body, Statement("$(new_sdef.name)($name[], $(argnames(create_info_sig))", nothing))
    FDefinition(new_sig.name, new_sig, false, body, "CreateVkHandle")
end

converted_type(type) = type
converted_type(type::Converted) = type.final_type

function accumulate_passes(sname, sig, new_nametype, passes; common_pass_kwargs=())
    body = Statement[]
    pass_results = DefaultOrderedDict(() -> [])
    @assert unique(typeof.(passes)) == typeof.(passes) "A Pass type cannot be provided more than once"
    for (name, type) ∈ zip(argnames(sig), argtypes(sig))
        count_arg = count_variable(name, sname)
        tmp_name = tmp_argname(name, type)
        new_name, new_type = new_nametype(name, type, sname)
        array_arg = isnothing(count_arg) ? array_variable(name, sname) : associated_array_variable(count_arg, sname)
        pass_args = PassArgs(; name, type, new_name, new_type, sdef=nothing, fdef=nothing, count_arg, array_arg, last_name=last_argname(body, tmp_name, new_name), tmp_name, passes=Dict(typeof.(passes) .=> false), sname)
        setproperty!.(Ref(pass_args), keys(common_pass_kwargs), values(common_pass_kwargs))
        for el ∈ passes
            pass_func = hasfield(typeof(el), :pass!) ? el.pass! : pass! # prioritize preprocessed pass inside struct
            body_statements = pass_func(pass_args, typeof(el))
            if !isnothing(body_statements) && typeof(body_statements) != Bool
                body_statements = typeof(body_statements) <: AbstractArray ? body_statements : Statement[body_statements]
                body_statements = annotate_pass(body_statements, el)
                append!(body, body_statements)
                pass_args.passes[typeof(el)] = true
            end
            push!(pass_results[name], PassResult(el, deepcopy(pass_args)))
            pass_args.last_name = last_argname(body, tmp_name, new_name)
        end
        @assert length(passes) == length(pass_results[name]) "Number of passes ($(length(passes))) and pass_results ($(length(pass_results[name]))) differ for $name ($sname)"
    end
    body, pass_results
end

function conversion(api, new_sdef, sdef, ::ConvertVkStructure)
    var = is_handle(sdef.name) ? "vk_handle" : "vk_struct"
    is_handle(sdef.name) && return FDefinition("Base.convert(T::Type{$(new_sdef.name)}, $var::$(sdef.name)) = $(new_sdef.name)($var)")
    conversion(api, new_sdef, sdef, [TranslateVkTypes(var), TakeConversionArgsFromVkVar(var)], var)
end

function conversion(api, new_sdef, sdef, passes, converted_var_name)
    fname = "Base.convert"
    args = PositionalArgument.(["T::Type{$(new_sdef.name)}", "$converted_var_name::$(sdef.name)"])
    new_sig = Signature(fname, args, [])
    body, pass_results = accumulate_passes(sdef.name, Signature(sdef), pass_new_nametype(SDefinition), passes, common_pass_kwargs=(; sdef))
    args_init = init_args(pass_results, body, take_property=false)
    push!(body, Statement("$(new_sdef.name)($(join_args(args_init)))", nothing))
    FDefinition(fname, new_sig, false, body)
end

function pass!(args::PassArgs, ::Type{TranslateVkTypes}; converted_arg_namespace)
    @unpack new_type, name, tmp_name = args
    new_type isa Converted && return Statement("$tmp_name = convert_vk($(new_type.final_type), $converted_arg_namespace.$name)", tmp_name)
end

function pass!(args::PassArgs, ::Type{TranslateVkTypesBack})
    @unpack new_type, last_name, type, tmp_name = args
    new_type isa Converted && return Statement("$tmp_name = convert_vk_back($type, $last_name)", tmp_name)
end

function pass!(args::PassArgs, ::Type{AddDefaults}; opt_params)
    @unpack tmp_name, name, sdef = args
    sname = sdef.name
    if !isempty(opt_params)
        last_param = last(collect(keys(opt_params)))
    end
    if name ∈ keys(opt_params) && isnothing(count_variable(name, sname))
        param, default = opt_params[name]
        eol = name == last_param ? "\n" : ""
        return Statement("$tmp_name = isnothing($(param.name)) ? $default : $(param.name)$eol", tmp_name)
    end
    nothing
end

function pass!(args::PassArgs, ::Type{ComputeLengthArgument})
    @unpack tmp_name, name, array_arg, count_arg, type = args
    if count_arg == name
        array_arg_new_name = fieldname_transform(array_arg, type)
        return Statement("$tmp_name = pointer_length($array_arg_new_name)", tmp_name)
    end
    nothing
end

function pass!(args::PassArgs, ::Type{ReplaceStructureType})
    @unpack sdef, name = args
    name == "sType" && return Statement("sType = $(stypes[sdef.name])\n", "sType")
end

function pass!(args::PassArgs, ::Type{DefineSelfPointers}; new_sname)
    @unpack name, tmp_name = args
    startswith(name, "p") && lstrip(name, 'p') == new_sname && return Statement("$tmp_name = Ref{$(sdef.name)}()", tmp_name)
end

function pass!(args::PassArgs, ::Type{ConvertArrays})
    @unpack new_type, last_name, new_name, tmp_name = args
    if !(new_type isa Converted) && is_abstractarray_type(new_type)
        eltype = inner_type(new_type)
        if is_base_type(eltype)
            eltype_widen_eval = eval(Meta.parse(widen_type(eltype)))
            isabstracttype(eltype_widen_eval) && return Statement("$tmp_name = convert(Array{$eltype}, $new_name)", last_name)
        end
    end
end

function preserved_pointer_statements(refname, reffed_obj, preserving_obj, assignee; pointer_fun = "unsafe_pointer", skip_ref = false)
    preserved_var = skip_ref ? reffed_obj : refname
    res = skip_ref ? Statement[] : [Statement("$refname = Ref($reffed_obj)", refname)]
    push!(res, Statement("$assignee = $pointer_fun($preserved_var)", assignee))
    push!(res, Statement("preserve($preserved_var, $preserving_obj)", nothing))
    res
end

function pass!(args::PassArgs, ::Type{GeneratePointers})
    @unpack type, name, tmp_name, new_name, new_type, last_name, passes = args
    if !is_triggered(DefineSelfPointers, args) && startswith(name, r"p{1,2}[A-Z]")
        arg_check = is_abstractarray_type(new_type) ? "!isempty($last_name)" : name == "pNext" ? "next ≠ C_NULL" : "!isnothing($new_name)"
        refname = "$(last_name)_ref"
        preserving_obj = new_name
        if_begin = Statement("if $arg_check", nothing)
        if_end = Statement("end", nothing)
        if is_abstractarray_type(new_type)
            if new_type == "AbstractArray{String}"
                reffed_obj = "$(last_name)_ptrarray"
                sts = preserved_pointer_statements(refname, reffed_obj, preserving_obj, tmp_name)
                insert!(sts, 1, Statement("$reffed_obj = pointer.($last_name)", reffed_obj))
            else
                reffed_obj = is_vulkan_type(inner_type(type)) ? "getproperty.($last_name, :vk)" : last_name
                sts = preserved_pointer_statements(refname, reffed_obj, preserving_obj, tmp_name)
            end
        elseif new_type == "String"
            reffed_obj = new_name
            # sts = preserved_pointer_statements(refname, reffed_obj, preserving_obj, tmp_name, skip_ref=true, pointer_fun="pointer")
            sts = [Statement("$tmp_name = pointer($new_name)", tmp_name)]
        else
            reffed_obj = "$last_name.vk"
            sts = preserved_pointer_statements(refname, reffed_obj, preserving_obj, tmp_name)
        end
        sts = [
            if_begin,
            sts...,
        ]
        if tmp_name ≠ last_name || is_abstractarray_type(new_type)
            val_else = (is_abstractarray_type(new_type) || is_ptr(new_type)) && !passes[AddDefaults] ? "C_NULL" : last_name
            push!(sts, Statement("else $tmp_name = $val_else", tmp_name))
        end
        push!(sts, if_end)
        return sts
    end
    nothing
end

function pass!(args::PassArgs, ::Type{AutomateCreateInfo})
    @unpack type, name, sdef = args
    if occursin("CreateInfo", name)
        Statement("create_info = 1", "create_info", nothing)
    end
end

function pass!(args::PassArgs, ::Type{TakeConversionArgsFromVkVar}; vk_var_name)
    @unpack passes, name, tmp_name, last_name = args
    assigned_name = "$vk_var_name.$name"
    !any(values(passes)) && return Statement("$tmp_name = $assigned_name", tmp_name)
end

function parameters(api, sdef::SDefinition)
    global parameters_dict
    kwargs = KeywordArgument[]
    params = Dict()
    for (name, type) ∈ sdef.fields
        if occursin("CreateInfo", name) && occursin("CreateInfo", type) && !is_ptr(type)
            append!(kwargs, parameters(api, constructor(api.structs[type])))
        else
            !isnothing(count_variable(name, sdef.name)) && continue
            if name ∈ keys(parameters_dict)
                kwarg = parameters_dict[name]
                push!(kwargs, kwarg)
            elseif sdef.name ∈ keys(optional_parameters_dict)
                opt_params = optional_parameters_dict[sdef.name]
                index = findfirst(x -> first(x) == name, opt_params)
                if !isnothing(index)
                    kwarg = KeywordArgument(fieldname_transform(name, type), "nothing") # real default value selection happens in the constructor body, to avoid having C_NULL arguments exposed to the user
                    params[name] = kwarg => last(opt_params[index])
                end
            end
        end
    end
    kwargs = [first.(values(params))..., kwargs...]
    kwargs, params
end

function is_parameter(argname, api, sdef)
    kwargs, _ = parameters(api, sdef)
    argname ∈ getproperty.(kwargs, :name)
end

function arguments(api, sdef::SDefinition)
    args = PositionalArgument[]
    for (name, type) ∈ sdef.fields
        discard_field(name, type, sdef) && continue
        is_parameter(name, api, sdef) && continue
        new_name, new_type = fieldname_transform(name, type), fieldtype_transform(name, type, sdef.name)
        if occursin("CreateInfo", name) && occursin("CreateInfo", type) && !is_ptr(type)
            append!(args, arguments(api, api.structs[type])) # get arguments from the create_info struct
        else
            if new_type isa Converted
                new_type_ = new_type.final_type
            else
                if startswith(new_type, "AbstractArray")
                    eltype = inner_type(new_type)
                    if eltype ∈ ["String", "AbstractString"]
                        new_type_ = "AbstractArray"
                    else
                        new_type_ = eltype ∈ base_types ? replace(new_type, Regex("(?<={)(?<include>.*?)$eltype") => string("<:" * widen_type(eltype))) : new_type
                        # println("$new_type => $eltype => $new_type_")
                    end
                else
                    new_type_ = new_type ∈ base_types ? widen_type(new_type) : new_type
                end
            end
            push!(args, PositionalArgument(new_name, new_type_))
        end
    end
    args
end