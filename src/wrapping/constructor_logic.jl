function constructor(api, new_sdef, sdef)
    defs, keys = [], []
    if is_enumerated_property(sdef) || is_handle(sdef.name)
        push!(defs, conversion(api, new_sdef, sdef, ConvertVkStructure()))
    end
    if !is_enumerated_property(sdef)
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
            "convert_handle_" * fname
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
    new_sdef
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
    count_arg
    array_arg
    last_name
    passes
end

struct PassResult{T <: Pass}
    pass::T
    pass_args::PassArgs
    is_triggered::Bool
end

# take the vulkan ID symbol if assigned, else take the julian ID symbol e.g. if pAllocator is assigned to the julian name p_allocator then return pAllocator; else, return p_allocator
last_argname(body, vk_id, vk_type) = vk_id ∈ getproperty.(body, :assigned_id) ? vk_id : fieldname_transform(vk_id, vk_type)

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

is_enabled(pass::Type{T}, args::PassArgs) where {T <: Pass} = any(isa.(Ref(T), keys(args.passes)))
is_triggered(pass::Type{T}, args::PassArgs) where {T <: Pass} = is_enabled(pass, args) && args.passes[pass]

function constructor(api, new_sdef, sdef, definition::GenericConstructor)
    kwargs, opt_params = parameters(api, sdef)
    args = filter(x -> x.name ∉ ["vk", getproperty.(kwargs, :name)...], arguments(api, sdef))
    vk_sig = Signature(sdef)
    init_args, body, pass_results = accumulate_passes(sdef, [AddDefaults(opt_params), TranslateVkTypesBack(), ComputeLengthArgument(), ReplaceStructureType(), DefineSelfPointers(new_sdef), ConvertArrays(), GeneratePointers()])
    default_co_sig = Signature(new_sdef)
    co_sig = Signature(new_sdef.name, args, kwargs)
    ptr_args = filter(arg -> pass_results[arg][GeneratePointers].is_triggered, argnames(vk_sig))
    final_argnames = map(x -> x ∈ ptr_args ? "$x[]" : x, argnames(default_co_sig))
    push!(body, Statement("vk = $(vk_sig.name)($(join_args(init_args)))\n", "vk"))
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

function accumulate_passes(sdef, passes; use_all_args=true)
    init_args = []
    body = Statement[]
    vk_sig = Signature(sdef)
    pass_results = OrderedDict(argnames(vk_sig) .=> Ref(OrderedDict()))
    @assert unique(typeof.(passes)) == typeof.(passes) "A Pass type cannot be provided more than once"
    for (name, type) ∈ zip(argnames(vk_sig), argtypes(vk_sig))
        count_arg = count_variable(name, sdef.name)
        array_arg = isnothing(count_arg) ? array_variable(name, sdef.name) : associated_array_variable(count_arg, sdef.name)
        pass_args = PassArgs(name, type, fieldname_transform(name, type), fieldtype_transform(name, type, sdef), sdef, count_arg, array_arg, last_argname(body, name, type), Dict(typeof.(passes) .=> false))
        for el ∈ passes
            pass_func = hasfield(typeof(el), :pass!) ? el.pass! : pass! # prioritize preprocessed pass inside struct
            body_statements = pass_func(pass_args, typeof(el))
            if !isnothing(body_statements) && typeof(body_statements) != Bool
                body_statements = typeof(body_statements) <: AbstractArray ? body_statements : Statement[body_statements]
                body_statements = annotate_pass(body_statements, el)
                # append!(init_args, filter(x -> !isnothing(x) && x ∉ init_args, getproperty.(body_statements, :assigned_id)))
                append!(body, body_statements)
                pass_args.passes[typeof(el)] = true
            end
            pass_args.last_name = last_argname(body, name, type)
            pass_results[name][typeof(el)] = PassResult(el, pass_args, is_triggered(typeof(el), pass_args))
        end
        (!any(values(pass_args.passes)) || use_all_args) && push!(init_args, last_argname(body, name, type))
    end
    init_args, body, pass_results
end

function conversion(api, new_sdef, sdef, ::ConvertVkStructure)
    var = is_handle(sdef.name) ? "vk_handle" : "vk_struct"
    is_handle(sdef.name) && return FDefinition("Base.convert(T::Type{$(new_sdef.name)}, $var::$(sdef.name)) = $(new_sdef.name)($var)")
    conversion(api, new_sdef, sdef, [TranslateVkTypes(var), TakeConversionArgsFromVkVar(var)], var)
end

function conversion(api, new_sdef, sdef, passes, converted_var_name)
    init_args = []
    fname = "Base.convert"
    args = PositionalArgument.(["T::Type{$(new_sdef.name)}", "$converted_var_name::$(sdef.name)"])
    new_sig = Signature(fname, args, [])
    init_args, body, pass_results = accumulate_passes(sdef, passes)
    push!(body, Statement("$(new_sdef.name)($(join_args(init_args)))", nothing))
    FDefinition(fname, new_sig, false, body)
end

function pass!(args::PassArgs, ::Type{TranslateVkTypes}; converted_arg_namespace)
    @unpack new_type, new_name, name = args
    converted_arg = isnothing(converted_arg_namespace) ? name : "$converted_arg_namespace.$name"
    new_type isa Converted && return Statement("$name = convert_vk($(new_type.final_type), vk_struct.$name)", name)
end

function pass!(args::PassArgs, ::Type{TranslateVkTypesBack})
    @unpack new_type, last_name, type, name = args
    new_type isa Converted && return Statement("$name = convert_vk_back($type, $last_name)", name)
end

function pass!(args::PassArgs, ::Type{AddDefaults}; opt_params)
    name = args.name
    sdef_name = args.sdef.name
    if !isempty(opt_params)
        last_param = last(collect(keys(opt_params)))
    end
    if name ∈ keys(opt_params) && isnothing(count_variable(name, sdef_name))
        param, default = opt_params[name]
        eol = name == last_param ? "\n" : ""
        return Statement("$name = isnothing($(param.name)) ? $default : $(param.name)$eol", name)
    end
    nothing
end

function pass!(args::PassArgs, ::Type{ComputeLengthArgument})
    @unpack name, array_arg, count_arg, type = args
    if count_arg == name
        array_arg_new_name = fieldname_transform(array_arg, type)
        return Statement("$name = pointer_length($array_arg_new_name)", name)
    end
    nothing
end

function pass!(args::PassArgs, ::Type{ReplaceStructureType})
    @unpack sdef, name = args
    name == "sType" && return Statement("sType = $(stypes[sdef.name])\n", "sType")
end

function pass!(args::PassArgs, ::Type{DefineSelfPointers}; new_sdef)
    name = args.name
    startswith(name, "p") && lstrip(name, 'p') == new_sdef.name && return Statement("$name = Ref{$(sdef.name)}()", name)
end

function pass!(args::PassArgs, ::Type{ConvertArrays})
    @unpack new_type, last_name, new_name, = args
    if !(new_type isa Converted) && is_abstractarray_type(new_type)
        eltype = inner_type(new_type)
        if is_base_type(eltype)
            eltype_widen_eval = eval(Meta.parse(widen_type(eltype)))
            isabstracttype(eltype_widen_eval) && return Statement("$new_name = convert(Array{$eltype}, $new_name)", new_name)
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
    @unpack type, name, new_name, new_type, last_name, sdef, passes = args
    if !is_triggered(DefineSelfPointers, args) && startswith(name, "p")
        arg_check = is_abstractarray_type(new_type) ? "!isempty($new_name)" : name == "pNext" ? "next ≠ C_NULL" : "!isnothing($new_name)"
        refname = "$(last_name)_ref"
        preserving_obj = new_name
        if_begin = Statement("if $arg_check", nothing)
        if_end = Statement("end", nothing)
        if is_abstractarray_type(new_type)
            if new_type == "AbstractArray{String}"
                reffed_obj = "$(last_name)_ptrarray"
                sts = preserved_pointer_statements(refname, reffed_obj, preserving_obj, name)
                insert!(sts, 1, Statement("$reffed_obj = pointer.($last_name)", reffed_obj))
            else
                reffed_obj = is_vulkan_type(inner_type(type)) ? "getproperty.($last_name, :vk)" : last_name
                sts = preserved_pointer_statements(refname, reffed_obj, preserving_obj, name)
            end
        elseif new_type == "String"
            reffed_obj = new_name
            # sts = preserved_pointer_statements(refname, reffed_obj, preserving_obj, name, skip_ref=true, pointer_fun="pointer")
            sts = [Statement("$name = pointer($new_name)", name)]
        else
            reffed_obj = "$last_name.vk"
            sts = preserved_pointer_statements(refname, reffed_obj, preserving_obj, name)
        end
        sts = [
            if_begin,
            sts...,
        ]
        if name ≠ last_name || is_abstractarray_type(new_type)
            val_else = (is_abstractarray_type(new_type) || is_ptr(new_type)) && !passes[AddDefaults] ? "C_NULL" : last_name
            push!(sts, Statement("else $name = $val_else", name))
        end
        push!(sts, if_end)
        return sts
    end
    nothing
end

function pass!(args::PassArgs, ::Type{AutomateCreateInfo})
    @unpack type, name, new_name, sdef = args
    if occursin("CreateInfo", name)
        Statement("create_info = 1", "create_info", nothing)
    end
end

function pass!(args::PassArgs, ::Type{TakeConversionArgsFromVkVar}; vk_var_name)
    @unpack passes, name, new_name, last_name = args
    assigned_name = "$vk_var_name.$name"
    !any(values(passes)) && return Statement("$name = $assigned_name", name)
end

function parameters(api, sdef::SDefinition)
    global parameters_dict
    optional_parameters_dict = VulkanSpec.optional_parameters_dict
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
        new_name, new_type = fieldname_transform(name, type), fieldtype_transform(name, type, sdef)
        if occursin("CreateInfo", name) && occursin("CreateInfo", type) && !is_ptr(type)
            append!(args, arguments(api, api.structs[type])) # get arguments from the create_info struct
        else
            if new_type isa Converted
                new_type_ = new_type.final_type
            else
                if startswith(new_type, "AbstractArray")
                    eltype = inner_type(new_type)
                    new_type_ = eltype ∈ base_types ? replace(new_type, Regex("(?<={)(?<include>.*?)$eltype") => string("<:" * widen_type(eltype))) : new_type
                    # println("$new_type => $eltype => $new_type_")
                else
                    new_type_ = new_type ∈ base_types ? widen_type(new_type) : new_type
                end
            end
            push!(args, PositionalArgument(new_name, new_type_))
        end
    end
    args
end