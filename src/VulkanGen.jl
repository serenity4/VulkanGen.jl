module VulkanGen

using Pipe, Transducers, DataStructures, JuliaFormatter, Parameters
using VulkanCore.vk
using VulkanCore:vk
using VulkanCore

include("utils.jl")
include("naming_conventions.jl")
include("signatures.jl")
include("codegen.jl")

# include("code_generators.jl")
# include("generate_helper.jl")
include("vulkan.jl")
include("parse.jl")
include("wrap_api.jl")

export vk,
CamelCaseLower,
CamelCaseUpper,
FDefinition,
SDefinition,
Signature,
SnakeCaseLower,
SnakeCaseUpper,
Statement,
VulkanCore,
argnames,
argtypes,
detect_convention,
enforce_convention,
generate,
prefix_vk,
remove_parts,
remove_prefix,
statements,
vk_prefix,
@sym_str,
remove_prefix,
wrap_api,
ParsedFile,
parse_api,
CDefinition,
EDefinition,
PositionalArgument,
KeywordArgument,
StructWrapper,
ConstWrapper,
FuncWrapper

end