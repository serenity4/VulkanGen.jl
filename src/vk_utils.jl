struct VulkanError <: Exception
    msg::AbstractString
    errorcode
end
Base.showerror(io::Core.IO, e::VulkanError) = print(io, "$(e.errorcode): ", e.msg)

"""
    @check vkFunctionSomething()

Checks whether the expression returned VK_SUCCESS or any non-error codes. Else, throw an error printing the corresponding code."""
macro check(expr)
    quote
        local msg = "failed to execute " * $(string(expr))
        @check $(esc(expr)) msg
    end
end

macro check(expr, msg)
    quote
        return_code = $(esc(expr))
        # if typeof(return_code) != VkResult
        #     throw(ErrorException("the return value must be a value of type VkResult"))
        # end
        if Int(return_code) > 0
            @warn "Non-success return code $return_code"
        elseif Int(return_code) < 0
            throw(VulkanError($msg, return_code))
        end
    end
end

"""Produce an unsafe pointer of type Ptr{T} from a Ref{T} reference.
"""
@generated function unsafe_pointer(obj)
    quote
        Base.unsafe_convert(Ptr{typeof(obj[])}, obj)
        # pointer_from_objref(obj[])
    end
end

@generated function unsafe_pointer(obj::Base.RefValue{<: AbstractArray{T, 1}}) where {T}
    quote
        Base.unsafe_convert(Ptr{T}, obj[])
        # pointer_from_objref(obj[])
    end
end


pointer_length(p) = p == C_NULL || isempty(p) ? 0 : length(p)

convert_vk(::Type{T}, str::NTuple{N,UInt8}) where {N,T <: AbstractString} = String(filter(x -> x != 0, UInt8[str...]))
convert_vk(::Type{VersionNumber}, version::UInt32) = VersionNumber(UInt32(version) >> 22, (UInt32(version) >> 12) & 0x3ff, UInt32(version) & 0xfff)
convert_vk_back(::Type{UInt32}, version::VersionNumber) = (version.major << 22) + (version.minor << 12) + version.patch
convert_vk_back(T::Type{NTuple{N,UInt8}}, s::String) where {N} = T(s * "\0" ^ (N - length(s)))

function unsafe_load_pointer(ptr, original_obj::T) where {T}
    a = T <: AbstractArray ? unsafe_wrap(T, ptr, (1:length(original_obj))...) : T == String ? unsafe_string(ptr) : typeof(ptr) <: Base.RefValue ? unsafe_load(ptr)[] : unsafe_load(ptr)
end