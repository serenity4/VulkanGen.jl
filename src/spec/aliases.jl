function fetch_aliases(xroot)
    alias_nodes = findall("//@alias", xroot)
    OrderedDict(
        alias.parentnode["name"] => alias.parentnode["alias"] for alias ∈ alias_nodes
    )
end

const aliases = fetch_aliases(xroot)

"""
Whether this name is an alias.
"""
isalias(name) = name ∈ keys(aliases)

"""
Whether an alias was built from this name.
"""
isaliased(name) = name ∈ values(aliases)

"""
Target of an alias.
"""
alias(al) = aliases[al]

"""
Take the non-alias value corresponding to this name. No effect is the name is not an alias. Correctly follows any alias chain.
"""
resolve_alias(name) = isalias(name) ? resolve_alias(alias(name)) : name