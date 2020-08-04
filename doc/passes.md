## Patterns

### General patterns

#### Vulkan conventions vs Julia conventions

- Vulkan names are implemented in CamelCase (for structs), camelCase (for functions) and SNAKE_CASE (for constants or enums)
- Julia names are implemented in CamelCase (for structs), snake_case (for functions) and snake_case/SNAKE_CASE (for constants or enums)

Vulkan functions can be renamed in Julia with the snake_case convention

#### Object instantiation

- supply a *create_info* struct
- call a function to fill an undefined reference with the instantiated object

Directly define a constructor which automatizes the process.

#### Custom allocators

- some objects support a pAllocator field, which is used for custom memory management

Since Julia is garbage-collected, it can be set to C_NULL.

#### Object finalization

- some objects need to be finalized with a Vulkan function

Wrap the object in a mutable structure.

#### Pointer handling

- objects are often initialized and processed internally with pointers
- these pointers must remain valid until the object is destroyed

Wrap the object with references to pointed data.

#### Error handling

- some functions return a VkResult type, which is an enum type

Create a macro to automatically check the result.

#### Julia object to pointer

- Vulkan often requires pointer arguments (instead of a String or of an Array for example)
- Julia can perform unsafe conversions for certain types with Base.cconvert and Base.unsafe_convert

If the argument is only processed in a function call (and are not relied upon afterwards), @ccall already keeps arguments valid until the function returns. Else, arguments should be wrapped until they are no longer needed.

#### Pointer validity

- implementations of the Vulkan API throughout different vendors may vary and are opaque
- there is no way to know for certain that a pointer won't be reused by Vulkan

Assumptions regarding API implementations might be made in some cases, at the risk of making the package exposed to exceptions which would cause crashes or undefined behavior.


## Passes

# Glossary

checkable function: function which returns a VkResult code to check