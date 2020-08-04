const instance_names = [
    "pSurface",
    "pView",
    "pPipelines",
    "pCallback",
    "pMode",
    "pSetLayout"
]

const create_fun_to_types_exceptions = Dict(
    "GraphicsPipelines" => "Pipeline"
)

const types_to_create_info_exceptions = Dict(
    "Queue" => "DeviceQueue"
)

function writeout_cmd_funs(
        io, cmd_fun
    )
    arg_names = Signature(cmd_fun)

    type_func_args = map(arg_names.names) do arg
        enforce_convention(arg, julia_convention, vulkan_convention, :variables)
        # arg == "command_buffer" && return "$(arg)::CommandBuffer"
    end
    fun_name = enforce_convention(String(cmd_fun), julia_convention, vulkan_convention, :functions, pickout_parts=[1, 2])
    expr = """
\"\"\"
Julian function for `$cmd_fun`.
For further documentation please refer to the documentation of `$cmd_fun`.
\"\"\"
function $(fun_name)($(join(type_func_args, ", ")))
    $(cmd_fun)($(join(type_func_args, ", ")))
end
"""
    println(io, expr)
end
    
function writeout_constructors(
        io, create_fun, create_type, type_name
    )

    func_arg_names = Signature(create_fun)
    func_args = filter(func_arg_names) do arg
        !occursin("CreateInfo", arg) && !startswith(arg, "p" * type_name) && !in(arg, instance_names)
    end
        
    crfun_novk = replace(string(create_fun), "vk" => "")
    instance_name_noprefix = replace(crfun_novk, "Create" => "")
    instance_name = "Vk" * replace(instance_name_noprefix in keys(create_fun_to_types_exceptions) ? create_fun_types_exceptions[instance_name_noprefix] : instance_name_noprefix, "Create" => "")
    create_args = map(func_arg_names) do arg
        if occursin("CreateInfo", arg)
            return :create_info
        end
        if startswith(arg, "p" * type_name) || in(arg, instance_names)
            return :instance_ptr
        end
        arg
    end
    expr = """
\"\"\"
Convenience constructor function for `$instance_name`.
Instead of passing a reference to `$instance_name`, it will
get returned already dereferenced. You also don't need to supply a create info,
just pass the arguments for it to `create_info_args`.
For further documentation please refer to the documentation of `$create_fun`.
\"\"\"
function $(crfun_novk)($(join(func_args, ", ")), create_info_args::Tuple)
    instance_ptr = Ref{vk.$instance_name}()
    create_info = VkCreateInfo$instance_name($create_type, create_info_args)
    @check vk.$(create_fun)($(join(create_args, ", ")))
    instance_ptr[]
end
"""
    println(io, expr)
end
    
exportnames = names(vk, all=false)
create_functions = filter(exportnames) do name
    startswith(string(name), "vkCreate") && isa(getproperty(vk, name), Function)
end
create_info_types = filter(exportnames) do name
    occursin("CreateInfo", string(name)) && isa(getproperty(vk, name), DataType)
end
    
commandbuffer_funs = filter(exportnames) do name
    startswith(string(name), "vkCmd") && isa(getproperty(vk, name), Function)
end
    

function generate_helper(; dest="../generated")
    open(dest, "w") do io
        println(io, """
using Vulkan

include("calls.jl")

    """)
        for elem in create_info_types
            typ = getproperty(vk, elem)
            names = []
            args = map(1:length(fieldnames(typ))) do i
                t = fieldtype(typ, i)
                name = fieldnames(typ)[i]
                push!(names, name)
                :($(name) = default($t))
            end
            conv_args = map(1:length(fieldnames(typ))) do i
                t = fieldtype(typ, i)
                name = fieldnames(typ)[i]
                :(struct_convert($t, $(name)))
            end
            no_vk = replace(string(elem), "Vk" => "")


            tname = replace(no_vk, "CreateInfo" => "")
            tname = replace(tname, "KHR" => "")
            tname = replace(tname, "EXT" => "")
            creatorfun = findfirst(create_functions) do fun
                occursin(tname, string(fun))
            end
            if !isnothing(creatorfun)
                writeout_constructors(
            io, create_functions[creatorfun], typ, tname
        )
            end
        end
        
        for f in commandbuffer_funs
            writeout_cmd_funs(io, f)
        end
        
    end
end