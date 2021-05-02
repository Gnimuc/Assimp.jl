# Assimp

![CI](https://github.com/Gnimuc/Assimp.jl/workflows/CI/badge.svg)
![TagBot](https://github.com/Gnimuc/Assimp.jl/workflows/TagBot/badge.svg)
[![Codecov](https://codecov.io/gh/Gnimuc/Assimp.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/Gnimuc/Assimp.jl)

## Installation

```
pkg> add Assimp
```

## Quick start
```
using Assimp.LibAssimp

# load asset
scene = aiImportFile("/your/file/path/xxx.glb",
                     aiProcess_CalcTangentSpace |
                     aiProcess_Triangulate |
                     aiProcess_JoinIdenticalVertices |
                     aiProcess_SortByPType)
    
if scene == C_NULL
    @error aiGetErrorString() |> unsafe_string
end

# do something

# clean up
aiReleaseImport(scene)
```
