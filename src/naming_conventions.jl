abstract type NamingConvention end

abstract type CamelCase <: NamingConvention end
abstract type SnakeCase <: NamingConvention end

struct SnakeCaseLower <: SnakeCase
    value
    SnakeCaseLower(value) = is_snake_case(value) && lowercase(value) == value ? new(value) : error("Invalid string format $value")
end

struct SnakeCaseUpper <: SnakeCase
    value
    SnakeCaseUpper(value) = is_snake_case(value) && uppercase(value) == value ? new(value) : error("Invalid string format $value")
end

struct CamelCaseLower <: CamelCase
    value
    CamelCaseLower(value) = is_camel_case(value) && uppercase(value[1]) != value[1]  ? new(value) : error("Invalid string format $value")
end

struct CamelCaseUpper <: CamelCase
    value
    CamelCaseUpper(value) = is_camel_case(value) && uppercase(value[1]) == value[1] ? new(value) : error("Invalid string format $value")
end

Base.split(str::SnakeCase) = split(str.value, "_")
function Base.split(str::CamelCase)
    strval = str.value
    lowercase(strval) == strval && return [strval]
    first_regex = uppercase(strval[1]) == strval[1] ? r"[A-Z]+?[A-Z]" : r"[a-z]+?[A-Z]"
    until_first_uppercase = match(first_regex, strval)
    other_matches = getproperty.(collect(eachmatch(r"[A-Z]+[a-z]*", strval)), :match)
    isnothing(until_first_uppercase) ? other_matches : [until_first_uppercase.match[1:end - 1], other_matches...]
end

SnakeCaseLower(parts::AbstractArray) = SnakeCaseLower(lowercase(snake_case(parts)))
SnakeCaseUpper(parts::AbstractArray) = SnakeCaseUpper(uppercase(snake_case(parts)))

CamelCaseLower(parts::AbstractArray) = CamelCaseLower(camel_case(lowercase.(parts)))
CamelCaseUpper(parts::AbstractArray) = CamelCaseUpper(uppercasefirst(camel_case(lowercase.(parts))))

snake_case(parts::AbstractArray) = join(parts, "_")
camel_case(parts::AbstractArray) = length(parts) == 1 ? parts[1] : join([parts[1], uppercasefirst.(parts[2:end])...])

Base.convert(T::Type{SnakeCaseLower}, str::SnakeCaseUpper) = T(uppercase(str.value))
Base.convert(T::Type{SnakeCaseUpper}, str::SnakeCaseLower) = T(lowercase(str.value))
Base.convert(T::Type{CamelCaseLower}, str::CamelCaseUpper) = T(lowercase(str.value[1]) * str.value[2:end])
Base.convert(T::Type{CamelCaseUpper}, str::CamelCaseLower) = T(uppercasefirst(str.value))
Base.convert(T::Type{<: CamelCase}, str::SnakeCase) = T(split(str))
Base.convert(T::Type{<: SnakeCase}, str::CamelCase) = T(split(str))

is_camel_case(str) = !occursin("_", str)
is_snake_case(str) = lowercase(str) == str || uppercase(str) == str

is_camel_case(str::NamingConvention) = is_camel_case(str.value)
is_snake_case(str::NamingConvention) = is_snake_case(str.value)

const code_convention_names = [
    :struct,
    :function,
    :variable,
    :constant
]

code_convention(naming_convention_types...) = Dict(name => type for (name, type) in zip(code_convention_names, naming_convention_types))
map_dicts(d1, d2) = Dict(key => obj1 => obj2 for (key, obj1, obj2) in zip(keys(d1), values(d1), values(d2)))

const julia_convention = code_convention(CamelCaseUpper, SnakeCaseLower, SnakeCaseLower, SnakeCaseLower)
const vulkan_convention = code_convention(CamelCaseUpper, CamelCaseLower, CamelCaseLower, SnakeCaseUpper)

const vulkan_to_julia = map_dicts(vulkan_convention, julia_convention)

function remove_parts(str::T, parts) where T <: NamingConvention
    splitted_str = split(str)
    parts_to_keep = 1:length(splitted_str) |> x -> filter(y -> y ∉ parts, x) |> collect
    kept_parts = getindex.(Ref(splitted_str), parts_to_keep)
    T(kept_parts)
end

function enforce_convention(str, code_convention_mapping, code_object; pickout_parts=nothing)
    old_t, new_t = code_convention_mapping[code_object]
    new_str = convert(new_t, old_t(str))
    (!isnothing(pickout_parts) ? remove_parts(new_str, pickout_parts) : new_str).value
end

enforce_convention(str, old_convention, new_convention, code_object; pickout_parts=nothing) = enforce_convention(str, map_dicts(old_convention, new_convention), code_object; pickout_parts)
enforce_convention(str::Symbol, args...; kwargs...)::Symbol = Symbol(enforce_convention(String(str), args...; kwargs...))

function is_code_convention_respected(str, code_object, code_convention)
    try
        code_convention.conventions[code_object](str)
    catch e
        if typeof(e) != ErrorException
            throw(e)
        end
        return false
    end
    true
end

function has_vk_prefix(name)
    startswith(name, "Vk")
    startswith(name, "VK")
    startswith(name, "vk")
    false
end

const vk_prefixes = Dict(
    :struct => "Vk",
    :function => "vk",
    :constant => "VK"
)

function prefix_vk(name, code_object)
    format = vulkan_convention.conventions[code_object]
    prefix(format(name), vk_prefixes[code_object]).value
end

function prefix(name::T, prefix) where T <: NamingConvention
    T([prefix, split(name)...])
end

function remove_vk_prefix(name)
    (startswith(name, "Vk") || startswith(name, "vk")) && return name[3:end]
    startswith(name, "VK_") && return name[4:end]
    nothing
end

remove_vk_prefix(name, ::Type{CamelCase}) = name[3:end]
remove_vk_prefix(name, ::Type{SnakeCase}) = name[4:end]