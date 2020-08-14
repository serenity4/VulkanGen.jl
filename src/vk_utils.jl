struct VulkanError <: Exception
    msg::AbstractString
    errorcode
end
Base.showerror(io::Core.IO, e::VulkanError) = print(io, "$(e.errorcode): ", e.msg)

"""
    @check vkFunctionSomething()

Checks whether the expression returned VK_SUCCESS. Else, throw an error printing the corresponding code."""
macro check(expr)
    quote
        local msg = "failed to execute " * $(string(expr))
        @check $(esc(expr)) msg
    end
end

macro check(expr, msg)
    quote
        local expr_return_code = $(esc(expr))
        if typeof(expr_return_code) != VkResult
            throw(ErrorException("the return value must be a value of type VkResult"))
        end
        if expr_return_code != VK_SUCCESS
            throw(VulkanError($msg, expr_return_code))
        end
    end
end

"""Produce an unsafe pointer of type Ptr{T} from a Ref{T} reference.
"""
@generated function unsafe_pointer(obj)
    quote
        Base.unsafe_convert(Ptr{typeof(obj[])}, obj)
    end
end

function vk_version(version::VersionNumber)
    VK_MAKE_VERSION(getproperty.(Ref(version), [:major, :minor, :patch])...)
end

int_to_version(version::Cuint) = VersionNumber(VK_VERSION_MAJOR(version),
										  VK_VERSION_MINOR(version),
										  VK_VERSION_PATCH(version))

int_to_str(field) = String(filter(x -> x != 0, UInt8[field...]))