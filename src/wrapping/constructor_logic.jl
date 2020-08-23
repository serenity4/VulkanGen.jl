function wrap_constructor!(w_api, api, new_sdef, sdef)
    if is_enumerated_property(sdef) && !is_handle(sdef.name)
        add_definition!(w_api, new_sdef, sdef, ConvertVkStructure())
    elseif is_handle(sdef.name)
        # add_definition!(w_api, new_sdef, sdef, CreateVkHandle())
    else
        add_definition!(w_api, new_sdef, sdef, GenericConstructor())
    end
end

"""
Pass type used to build the body of a function
"""
abstract type Pass end
struct TranslateVkTypes <: Pass end
struct TranslateVkTypesBack <: Pass end
struct ComputeLengthArgument <: Pass end
struct ReplaceStructureType <: Pass end

@with_kw mutable struct PassArgs
    name
    type
    new_name
    new_type
    sdef
    counted_arg
    last_name
    passes
end

struct PassResult{T <: Pass}
    pass::T
    pass_args::PassArgs
    is_triggered::Bool
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

# take the vulkan ID symbol if assigned, else take the julian ID symbol e.g. if pAllocator is assigned to the julian name p_allocator then return pAllocator; else, return p_allocator
last_argname(body, vk_id, vk_type) = vk_id ∈ getproperty.(body, :assigned_id) ? vk_id : fieldname_transform(vk_id, vk_type)

abstract type ConstructorDefinition end
struct ConvertVkStructureConstructor <: ConstructorDefinition end
struct GenericConstructor <: ConstructorDefinition end
struct CreateVkHandle <: ConstructorDefinition end

abstract type ConversionDefinition end
struct ConvertVkStructure <: ConversionDefinition end


preprocess_pass(pass_type::Type{T}; kwargs...) where {T <: Pass} = (pass_args, T) -> pass!(pass_args, T; kwargs...)
annotate_pass(statements, pass) = (body_statements = getproperty.(statements, :body); Statement.(rstrip.(body_statements, '\n') .* "    # $(typeof(pass).name)" .* map(x -> endswith(x, "\n") ? "\n" : "", body_statements), getproperty.(statements, :assigned_id), getproperty.(statements, :evaluated_ids)))
is_enabled(pass::Type{T}, args::PassArgs) where {T <: Pass} = any(isa.(Ref(T), keys(args.passes)))
is_triggered(pass::Type{T}, args::PassArgs) where {T <: Pass} = is_enabled(pass, args) && args.passes[pass]


function add_definition!(w_api, new_sdef, sdef, definition::ConversionDefinition; kwargs...)
    def = define_conversion(new_sdef, sdef, definition; kwargs...)
    push!(w_api.funcs, def)
end

function add_definition!(w_api, new_sdef, sdef, definition::ConstructorDefinition; kwargs...)
    def = define_constructor(new_sdef, sdef, definition; kwargs...)
    push!(w_api.funcs, def)
end

function define_constructor(new_sdef, sdef, definition::GenericConstructor)
    kwargs, opt_params = parameters_from_fields(sdef)
    args = filter(x -> x.name ∉ ["vk", getproperty.(kwargs, :name)...], arguments_from_fields(new_sdef))
    vk_sig = Signature(sdef)
    init_args, body, pass_results = accumulate_passes(sdef, [AddDefaults(opt_params), TranslateVkTypesBack(), ComputeLengthArgument(), ReplaceStructureType(), DefineSelfPointers(new_sdef), GeneratePointers()])
    default_co_sig = Signature(new_sdef)
    co_sig = Signature(new_sdef.name, args, kwargs)
    ptr_args = filter(arg -> pass_results[arg][GeneratePointers].is_triggered, argnames(vk_sig))
    final_argnames = map(x -> x ∈ ptr_args ? "$x[]" : x, argnames(default_co_sig))
    push!(body, Statement("vk = $(vk_sig.name)($(join_args(init_args)))\n", "vk", init_args))
    push!(body, Statement("$(default_co_sig.name)($(join_args(final_argnames)))", nothing, argnames(default_co_sig)))
    FDefinition(new_sdef.name, co_sig, length(body) == 1, body)
end

function define_conversion(new_sdef, sdef, ::ConvertVkStructure)
    define_conversion(new_sdef, sdef, [TranslateVkTypes()])
end

function define_constructor(new_sdef, sdef, ::CreateVkHandle; create_info_sdef, create_fun_sig)
    kwargs_info, _ = parameters_from_fields(create_info_sdef)
    args_info = arguments_from_fields(create_info_sdef)
    kwargs = [kwargs_info..., KeywordArgument("pAllocator", "C_NULL")]
    new_sig = Signature(new_sdef.name, args_info, kwargs)
    create_info_sig = Signature(create_info_sdef)
    name = nc_convert(SnakeCaseLower, sdef.name)
    create_func = handle_creation_info[sdef.name][1]
    push!(body, Statement("$name = Ref{$(sdef.name)}()", name, []))
    push!(body, Statement("create_info = $create_info_sig", "create_info", argnames(create_info_sig)))
    push!(body, Statement("$create_func", nothing, argnames(create_info_sig)))
    push!(body, Statement("$(new_sdef.name)("))
    FDefinition(new_sig.name, new_sig, false, body)
end

function accumulate_passes(sdef, passes; use_all_args=true)
    init_args = []
    body = Statement[]
    vk_sig = Signature(sdef)
    pass_results = OrderedDict(argnames(vk_sig) .=> Ref(OrderedDict()))
    @assert unique(typeof.(passes)) == typeof.(passes) "A Pass type cannot be provided more than once"
    for (name, type) ∈ zip(argnames(vk_sig), argtypes(vk_sig))
        counted_arg = cardinality(name, sdef.name)
        pass_args = PassArgs(name, type, fieldname_transform(name, type), fieldtype_transform(name, type, Dict()), sdef, counted_arg, last_argname(body, name, type), Dict(typeof.(passes) .=> false))
        for el ∈ passes
            pass_func = hasfield(typeof(el), :pass!) ? el.pass! : pass! # prioritize preprocessed pass inside struct
            body_statements = pass_func(pass_args, typeof(el))
            if !isnothing(body_statements) && typeof(body_statements) != Bool
                body_statements = typeof(body_statements) <: AbstractArray ? body_statements : Statement[body_statements]
                body_statements = annotate_pass(body_statements, el)
                append!(init_args, filter(x -> !isnothing(x) && x ∉ init_args, getproperty.(body_statements, :assigned_id)))
                append!(body, body_statements)
                pass_args.passes[typeof(el)] = true
            end
            pass_args.last_name = last_argname(body, name, type)
            pass_results[name][typeof(el)] = PassResult(el, pass_args, is_triggered(typeof(el), pass_args))
        end
        !any(values(pass_args.passes)) && use_all_args && push!(init_args, name)
    end
    init_args, body, pass_results
end

function define_conversion(new_sdef, sdef, passes)
    new_sig = Signature("Base.convert", [PositionalArgument("T", "Type{$(new_sdef.name)}"), PositionalArgument("vk_struct", sdef.name)], [])
    init_args, body, pass_results = accumulate_passes(sdef, passes, use_all_args=false)
    for (i, arg) ∈ enumerate(argnames(Signature(sdef)))
        if arg ∉ init_args
            insert!(init_args, i, "vk_struct.$arg")
        end
    end
    push!(body, Statement("$(new_sdef.name)($(join_args(init_args)))", nothing, join_args(init_args)))
    FDefinition(new_sdef.name, new_sig, false, body)
end

function define_constructor(new_sdef, sdef, ::ConvertVkStructureConstructor)
    define_constructor(new_sdef, sdef, [TranslateVkTypes()])
end

function define_constructor(new_sdef, sdef, passes)
    init_args = []
    new_sig = Signature(new_sdef.name, [PositionalArgument("vk_struct", sdef.name)], [])
    init_args, body, pass_results = accumulate_passes(sdef, passes)
    push!(body, Statement("$(new_sdef.name)($(join_args(init_args)))", nothing, join_args(init_args)))
    FDefinition(new_sdef.name, new_sig, false, body)
end

function pass!(args::PassArgs, ::Type{TranslateVkTypes})
    @unpack new_type, new_name, name = args
    new_type isa Converted && return Statement("$name = convert_vk($(new_type.final_type), vk_struct.$name)", name, "vk_struct.$name")
end

function pass!(args::PassArgs, ::Type{TranslateVkTypesBack})
    @unpack new_type, last_name, type, name = args
    new_type isa Converted && return Statement("$name = convert_vk_back($type, $last_name)", name, [last_name])
end

function pass!(args::PassArgs, ::Type{AddDefaults}; opt_params)
    name = args.name
    sdef_name = args.sdef.name
    if !isempty(opt_params)
        last_param = last(collect(keys(opt_params)))
    end
    if name ∈ keys(opt_params) && isnothing(cardinality(name, sdef_name))
        param, default = opt_params[name]
        eol = name == last_param ? "\n" : ""
        return Statement("$name = isnothing($(param.name)) ? $default : $(param.name)$eol", name, [param.name])
    end
    nothing
end

function pass!(args::PassArgs, ::Type{ComputeLengthArgument})
    @unpack name, counted_arg, type = args
    if !isnothing(counted_arg)
        counted_arg_new_name = fieldname_transform(counted_arg, type)
        return Statement("$name = pointer_length($counted_arg_new_name)", name, [counted_arg_new_name])
    end
    nothing
end

function pass!(args::PassArgs, ::Type{ReplaceStructureType})
    @unpack sdef, name = args
    name == "sType" && return Statement("sType = $(stypes[sdef.name])\n", "sType", [])
end

function pass!(args::PassArgs, ::Type{DefineSelfPointers}; new_sdef)
    name = args.name
    startswith(name, "p") && lstrip(name, 'p') == new_sdef.name && return Statement("$name = Ref{$(sdef.name)}()", name, [])
end

function pass!(args::PassArgs, ::Type{GeneratePointers})
    @unpack type, name, new_name, last_name = args
    if !is_triggered(DefineSelfPointers, args) && startswith(name, "p")
        type == "Ptr{Cstring}" && (arg_check = "isempty($last_name)"; return Statement("$name = $arg_check ? C_NULL : pointer(pointer.($last_name))", name, [last_name]))
        type == "Cstring" && (arg_check = "$last_name == C_NULL"; return Statement("$name = $arg_check ? C_NULL : pointer($last_name)", name, [last_name]))
        refname = "$(last_name)_ref"
        return Statement("$name = $last_name == C_NULL ? C_NULL : ($refname = Ref($last_name.vk); preserve($refname, $new_name); unsafe_pointer($refname))", name, [last_name, new_name])
    end
    nothing
end

function parameters_from_fields(sdef)
    kwargs = KeywordArgument[]
    params = Dict()
    for (name, type) ∈ sdef.fields
        !isnothing(cardinality(name, sdef.name)) && continue
        if name ∈ keys(parameters)
            kwarg = parameters[name]
            push!(kwargs, kwarg)
        elseif sdef.name ∈ keys(optional_parameters)
            opt_params = optional_parameters[sdef.name]
            index = findfirst(x -> first(x) == name, opt_params)
            if !isnothing(index)
                kwarg = KeywordArgument(fieldname_transform(name, type), "nothing") # real default value selection happens in the constructor body
                params[name] = kwarg => last(opt_params[index])
            end
        end
    end
    kwargs = [first.(values(params))..., kwargs...]
    kwargs, params
end
arguments_from_fields(sdef) = PositionalArgument.(collect(keys((sdef.fields))))