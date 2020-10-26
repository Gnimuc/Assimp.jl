module LibAssimp

using assimp_jll
using CEnum

include("libassimp_patch.jl")
include(joinpath(@__DIR__, "..", "gen", "libassimp_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "libassimp_api.jl"))

foreach(names(@__MODULE__, all=true)) do s
    if startswith(string(s), "ai") || startswith(string(s), "AI_")
        @eval export $s
    end
end

end # module
