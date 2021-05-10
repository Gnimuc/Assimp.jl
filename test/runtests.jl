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

@testset "Show vertices" begin
    scene = aiImportFile(joinpath(@__DIR__, "test.stl"),
                         aiProcess_CalcTangentSpace |
                         aiProcess_Triangulate |
                         aiProcess_JoinIdenticalVertices |
                         aiProcess_SortByPType
                         )
    if scene == C_NULL
        @error aiGetErrorString() |> unsafe_string
        @test false
    end

    scene_obj = unsafe_load(scene)
    num_mesh = scene_obj.mNumMeshes
    for i = 1:num_mesh
        mesh_obj = unsafe_load(unsafe_load(scene_obj.mMeshes, i))
        for j = 1:mesh_obj.mNumVertices
            vt = unsafe_load(mesh_obj.mVertices, j)
            @show vt
        end
    end
    aiReleaseImport(scene)
end
