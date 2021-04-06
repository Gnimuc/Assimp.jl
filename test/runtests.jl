using Assimp
using Assimp.LibAssimp
using Test

function import_file_test(filename)
    scene = aiImportFile(joinpath(@__DIR__, filename),
                         aiProcess_CalcTangentSpace |
                         aiProcess_Triangulate |
                         aiProcess_JoinIdenticalVertices |
                         aiProcess_SortByPType
                        )
    if scene == C_NULL
        @error aiGetErrorString() |> unsafe_string
        return false
    end
    aiReleaseImport(scene)
    return true
end

@testset "Assimp.jl" begin
    @test import_file_test("test.glb")
    @test import_file_test("test.fbx")
    @test import_file_test("test.stl")
end
