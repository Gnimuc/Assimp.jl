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

function import_file(path)
    scene = aiImportFile(path,
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

import_file("/your/file/path/xxx.glb")

```