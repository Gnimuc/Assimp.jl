module LibAssimp

import Libdl

# Load in `deps.jl`, complaining if it does not exist
const depsjl_path = joinpath(@__DIR__, "..", "deps", "deps.jl")
if !isfile(depsjl_path)
    error("Assimp was not built properly. Please run Pkg.build(\"Assimp\").")
end
include(depsjl_path)
# Module initialization function
function __init__()
    check_deps()
end

using CEnum

include(joinpath(@__DIR__, "..", "gen", "libassimp_common.jl"))
include(joinpath(@__DIR__, "..", "gen", "libassimp_api.jl"))

foreach(names(@__MODULE__, all=true)) do s
    if startswith(string(s), "ai") || startswith(string(s), "AI_")
        @eval export $s
    end
end

end # module
