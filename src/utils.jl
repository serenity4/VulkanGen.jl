macro sym_str(def)
    esc(:(Symbol($(Meta.parse("\"$(escape_string(def))\"")))))
end

join_args(args) = join(args, ", ")
splitargs(args) = split(args, ",")
subindex(arr::AbstractArray, indices) = [arr[i] for i ∈ indices]

function splitjoin(str, removed_parts; delim=" ")
    split_str = split(str, delim)
    kept_parts = filter(x -> x ∉ removed_parts, 1:length(split_str))
    join(subindex(split_str, kept_parts), delim)
end

splitstrip(str; delim=" ", stripped_chars=[' ']) = strip.(split(str, delim), Ref(stripped_chars))