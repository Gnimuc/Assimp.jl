using Clang.Generators
using assimp_jll

cd(@__DIR__)

const ASSIMP_INCLUDE = joinpath(assimp_jll.artifact_dir, "include") |> normpath
const C_INTERFACE_HEADERS = ["cfileio.h",  "cimport.h", "cexport.h", "scene.h", "postprocess.h", "pbrmaterial.h", "version.h"]
const ASSIMP_HEADERS = [joinpath(ASSIMP_INCLUDE, "assimp", h) for h in C_INTERFACE_HEADERS]

options = load_options(joinpath(@__DIR__, "generator.toml"))

args = get_default_args()
push!(args, "-I$ASSIMP_INCLUDE")

ctx = create_context(ASSIMP_HEADERS, args, options)

build!(ctx)
