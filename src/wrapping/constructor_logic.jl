
function constructor_body(api, new_sdef, sdef::SDefinition, args, kwargs)
    pats = patterns(sdef)
    body = Statement[]
    vk_creation_args = []

    vk_const_sig = Signature(sdef)
    new_sig = Signature(new_sdef)
    
    for arg ∈ argnames(vk_const_sig)
        counted_arg = len_element(arg, sdef.name)
        if !isnothing(counted_arg)
            push!(body, Statement("$arg = length($(field_transform(counted_arg)))", arg, [counted_arg]))
        elseif arg == :sType
            push!(body, Statement("sType = $(stypes["$(sdef.name)"])", :sType, []))
        elseif startswith("$arg", "p") && arg != :pNext
            ptr_arg = put_ptr_to_end(arg)
            if lstrip("$arg", 'p') == "$(new_sdef.name)"
                push!(body, Statement("$arg = Ref{$(sdef.name)}()", arg, []))
            else
                push!(body, Statement("$arg = Ref($(field_transform(arg)))", arg, [arg]))
            end
        end
        push!(vk_creation_args, arg)
    end

    push!(body, Statement("vk = $(vk_const_sig.symbol)($(join_args(vk_creation_args)))", :vk, vk_creation_args))
    push!(body, Statement("$(generate(new_sig))", nothing, argnames(new_sig)))
    body
end

function parameters_from_fields(sdef)
    names = collect(keys(sdef.fields))
    kwarg_names = filter(x -> x ∈ keys(parameters), names)
    kwargs = map(x -> getindex(parameters, x), kwarg_names)

    kwargs
end
arguments_from_fields(sdef) = PositionalArgument.(collect(keys((sdef.fields))))

# const create_fun_to_types_exceptions = Dict(
# "GraphicsPipelines" => "Pipeline"
# )

# const types_to_create_info_exceptions = Dict(
# "Queue" => "DeviceQueue"
# )