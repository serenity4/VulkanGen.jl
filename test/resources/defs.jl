mutable struct MyMutableStruct end
struct MyStruct
    a::Int
    b::Ptr{Cvoid}
    c::NTuple{16,Cfloat}
end

function f(x::Int, y, z; p=5)
    println(50)
    println("finished")
end

g(x) = 50 * x

@enum my_enum a b c d e f

const myconst = 50