const REFERENCE_DICT = WeakKeyDict()

"""
Preserves a ref as long as the parent is alive
"""
function preserve(x::T, parent) where {T <: Ref}
    refs = get!(REFERENCE_DICT, parent, [])
    push!(refs, x)
    nothing
end

function preserved_ref(x, parent)
    ref = Ref(x)
    haskey(REFERENCE_DICT, parent) && ref ∈ REFERENCE_DICT[parent] && return ref
    preserve(ref, parent)
    ref
end

# """Register a WeakRef to the parent in the reference dict which cleans itself when finalized
# """
# function register(parent)
#     wr = WeakRef(parent)
#     REFERENCE_DICT[wr] = []
#     Base.finalizer(x -> delete!(REFERENCE_DICT, x), wr)
#     wr
# end

"""
Can we get a pointer to `T` savely?
True = yes, false = no!
"""
is_referenceable(x::T) where T <: DenseArray = true
is_referenceable(x::T) where T = ismutable(T)