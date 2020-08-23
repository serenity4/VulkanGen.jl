## Patterns

#### Vulkan conventions vs Julia conventions

- Vulkan names are implemented in CamelCase (for structs), camelCase (for functions) and SNAKE_CASE (for constants or enums)
- Julia names are implemented in CamelCase (for structs), snake_case (for functions) and snake_case/SNAKE_CASE (for constants or enums)

Vulkan functions can be renamed in Julia with the snake_case convention

#### Object instantiation

- supply a *\*CreateInfo* struct
- call a function to fill an undefined reference with the instantiated object

Directly define a constructor which automatizes the process.

#### Custom allocators

- some objects support a pAllocator field, which is used for custom memory management

Since Julia is garbage-collected, it can be set to C_NULL.

#### Object finalization

- some objects need to be finalized with a Vulkan function

Wrap the object in a mutable structure, and register the finalization function through `Base.finalizer`.

#### Error handling

- some functions return a VkResult type, which is an enum type

Create a macro to automatically check the result and raise any errors.

#### Pointer handling

- Vulkan often requires pointer arguments (instead of a String or of an Array for example)
- these pointers must remain valid until the object is destroyed
- Julia can perform unsafe conversions for certain types with Base.cconvert and Base.unsafe_convert

If the argument is only processed in a function call (and are not relied upon afterwards), @ccall already keeps arguments valid until the function returns. Else, arguments should be wrapped until they are no longer needed. A good approach is to keep those pointers as struct fields that thus live as long as the instance which needs them.

#### Pointer validity

- implementations of the Vulkan API throughout different vendors may vary and are opaque
- there is no way to know for certain that a pointer won't be reused by Vulkan

Assumptions regarding API implementations might be made in some cases, at the risk of making the package exposed to exceptions which would cause crashes or undefined behavior.

#### Array pointers and counting

- some elements are provided as array pointers, and the number of elements must be supplied alongside the pointer

Since in Julia the `length` function can return the number of elements, an example tuple `(pLayerNames, pLayerCount)` could be transformed to `(layerNames, length(layerNames))` with layerNames a regular Julia array.

#### Array fetching

Some array structures can be returned by Vulkan, with two calls to the same function:

- a reference to a `UInt32` is filled with the number of elements, with the array to fill left as C_NULL
- an array with the right size is defined in Julia
- the function is called again with the reference to the array to be filled

#### Strings as char*

- some objects are defined as a N-tuple of `UInt8` (character) elements
- they always need extra-effort to be converted to a String to be processed in Julia

They should be converted to `String` elements to ease their processing.

## Wrapping features

#### Wrap opaque pointers into structs

Transform opaque pointers defined as `const Ptr{Cvoid}` to a struct with

- a `handle` field (which will store the pointer)
- instantiation attributes
- a `deps` field which will accommodate any pointer data that could be used with the pointer and that needs to be valid.

They will adopt the Julia convention, with the "Vk" prefix removed

#### Clean struct fields

Remove unnecessary or initialization arguments (such as custom allocators and array lengths - see *array pointers and counting*).
Convert pointer fields to regular fields (`String` instead of `Cstring` or `NTuple{256, UInt8}`, `Array` instead of `Ptr{Array}`).
Remove Vulkan types (`VkBool32` to `Bool`, `Cint` to `Integer`, `Cfloat` to `Float32`) that can be converted through `@ccall`.

#### Define constructors

Define constructors which exploit Vulkan patterns for *object instantiation*, *error handling* and *object finalization*.

#### Define convenience functions

Automate patterns like *array fetching*.

## Wrapping process

1. Remove unnecessary constant types (e.g. `VkBool32`)
2. Wrap Vulkan handles (`VkInstance`, `VkDevice`...) into structs

# Glossary

checkable function: function which returns a VkResult code that can be checked