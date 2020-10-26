# Julia wrapper for header: defs.h
# Automatically generated using Clang.jl

# Julia wrapper for header: vector2.h
# Automatically generated using Clang.jl

# Julia wrapper for header: vector3.h
# Automatically generated using Clang.jl

# Julia wrapper for header: matrix3x3.h
# Automatically generated using Clang.jl

# Julia wrapper for header: matrix4x4.h
# Automatically generated using Clang.jl

# Julia wrapper for header: color4.h
# Automatically generated using Clang.jl

# Julia wrapper for header: types.h
# Automatically generated using Clang.jl

# Julia wrapper for header: aabb.h
# Automatically generated using Clang.jl

# Julia wrapper for header: cfileio.h
# Automatically generated using Clang.jl

# Julia wrapper for header: cimport.h
# Automatically generated using Clang.jl


function aiImportFile(pFile, pFlags)
    ccall((:aiImportFile, libassimp), Ptr{aiScene}, (Cstring, UInt32), pFile, pFlags)
end

function aiImportFileEx(pFile, pFlags, pFS)
    ccall((:aiImportFileEx, libassimp), Ptr{aiScene}, (Cstring, UInt32, Ptr{aiFileIO}), pFile, pFlags, pFS)
end

function aiImportFileExWithProperties(pFile, pFlags, pFS, pProps)
    ccall((:aiImportFileExWithProperties, libassimp), Ptr{aiScene}, (Cstring, UInt32, Ptr{aiFileIO}, Ptr{aiPropertyStore}), pFile, pFlags, pFS, pProps)
end

function aiImportFileFromMemory(pBuffer, pLength, pFlags, pHint)
    ccall((:aiImportFileFromMemory, libassimp), Ptr{aiScene}, (Cstring, UInt32, UInt32, Cstring), pBuffer, pLength, pFlags, pHint)
end

function aiImportFileFromMemoryWithProperties(pBuffer, pLength, pFlags, pHint, pProps)
    ccall((:aiImportFileFromMemoryWithProperties, libassimp), Ptr{aiScene}, (Cstring, UInt32, UInt32, Cstring, Ptr{aiPropertyStore}), pBuffer, pLength, pFlags, pHint, pProps)
end

function aiApplyPostProcessing(pScene, pFlags)
    ccall((:aiApplyPostProcessing, libassimp), Ptr{aiScene}, (Ptr{aiScene}, UInt32), pScene, pFlags)
end

function aiGetPredefinedLogStream(pStreams, file)
    ccall((:aiGetPredefinedLogStream, libassimp), aiLogStream, (aiDefaultLogStream, Cstring), pStreams, file)
end

function aiAttachLogStream(stream)
    ccall((:aiAttachLogStream, libassimp), Cvoid, (Ptr{aiLogStream},), stream)
end

function aiEnableVerboseLogging(d)
    ccall((:aiEnableVerboseLogging, libassimp), Cvoid, (aiBool,), d)
end

function aiDetachLogStream(stream)
    ccall((:aiDetachLogStream, libassimp), aiReturn, (Ptr{aiLogStream},), stream)
end

function aiDetachAllLogStreams()
    ccall((:aiDetachAllLogStreams, libassimp), Cvoid, ())
end

function aiReleaseImport(pScene)
    ccall((:aiReleaseImport, libassimp), Cvoid, (Ptr{aiScene},), pScene)
end

function aiGetErrorString()
    ccall((:aiGetErrorString, libassimp), Cstring, ())
end

function aiIsExtensionSupported(szExtension)
    ccall((:aiIsExtensionSupported, libassimp), aiBool, (Cstring,), szExtension)
end

function aiGetExtensionList(szOut)
    ccall((:aiGetExtensionList, libassimp), Cvoid, (Ptr{aiString},), szOut)
end

function aiGetMemoryRequirements(pIn, in)
    ccall((:aiGetMemoryRequirements, libassimp), Cvoid, (Ptr{aiScene}, Ptr{aiMemoryInfo}), pIn, in)
end

function aiCreatePropertyStore()
    ccall((:aiCreatePropertyStore, libassimp), Ptr{aiPropertyStore}, ())
end

function aiReleasePropertyStore(p)
    ccall((:aiReleasePropertyStore, libassimp), Cvoid, (Ptr{aiPropertyStore},), p)
end

function aiSetImportPropertyInteger(store, szName, value)
    ccall((:aiSetImportPropertyInteger, libassimp), Cvoid, (Ptr{aiPropertyStore}, Cstring, Cint), store, szName, value)
end

function aiSetImportPropertyFloat(store, szName, value)
    ccall((:aiSetImportPropertyFloat, libassimp), Cvoid, (Ptr{aiPropertyStore}, Cstring, ai_real), store, szName, value)
end

function aiSetImportPropertyString(store, szName, st)
    ccall((:aiSetImportPropertyString, libassimp), Cvoid, (Ptr{aiPropertyStore}, Cstring, Ptr{aiString}), store, szName, st)
end

function aiSetImportPropertyMatrix(store, szName, mat)
    ccall((:aiSetImportPropertyMatrix, libassimp), Cvoid, (Ptr{aiPropertyStore}, Cstring, Ptr{aiMatrix4x4}), store, szName, mat)
end

function aiCreateQuaternionFromMatrix(quat, mat)
    ccall((:aiCreateQuaternionFromMatrix, libassimp), Cvoid, (Ptr{aiQuaternion}, Ptr{aiMatrix3x3}), quat, mat)
end

function aiDecomposeMatrix(mat, scaling, rotation, position)
    ccall((:aiDecomposeMatrix, libassimp), Cvoid, (Ptr{aiMatrix4x4}, Ptr{aiVector3D}, Ptr{aiQuaternion}, Ptr{aiVector3D}), mat, scaling, rotation, position)
end

function aiTransposeMatrix4(mat)
    ccall((:aiTransposeMatrix4, libassimp), Cvoid, (Ptr{aiMatrix4x4},), mat)
end

function aiTransposeMatrix3(mat)
    ccall((:aiTransposeMatrix3, libassimp), Cvoid, (Ptr{aiMatrix3x3},), mat)
end

function aiTransformVecByMatrix3(vec, mat)
    ccall((:aiTransformVecByMatrix3, libassimp), Cvoid, (Ptr{aiVector3D}, Ptr{aiMatrix3x3}), vec, mat)
end

function aiTransformVecByMatrix4(vec, mat)
    ccall((:aiTransformVecByMatrix4, libassimp), Cvoid, (Ptr{aiVector3D}, Ptr{aiMatrix4x4}), vec, mat)
end

function aiMultiplyMatrix4(dst, src)
    ccall((:aiMultiplyMatrix4, libassimp), Cvoid, (Ptr{aiMatrix4x4}, Ptr{aiMatrix4x4}), dst, src)
end

function aiMultiplyMatrix3(dst, src)
    ccall((:aiMultiplyMatrix3, libassimp), Cvoid, (Ptr{aiMatrix3x3}, Ptr{aiMatrix3x3}), dst, src)
end

function aiIdentityMatrix3(mat)
    ccall((:aiIdentityMatrix3, libassimp), Cvoid, (Ptr{aiMatrix3x3},), mat)
end

function aiIdentityMatrix4(mat)
    ccall((:aiIdentityMatrix4, libassimp), Cvoid, (Ptr{aiMatrix4x4},), mat)
end

function aiGetImportFormatCount()
    ccall((:aiGetImportFormatCount, libassimp), Csize_t, ())
end

function aiGetImportFormatDescription(pIndex)
    ccall((:aiGetImportFormatDescription, libassimp), Ptr{aiImporterDesc}, (Csize_t,), pIndex)
end
# Julia wrapper for header: cexport.h
# Automatically generated using Clang.jl


function aiGetExportFormatCount()
    ccall((:aiGetExportFormatCount, libassimp), Csize_t, ())
end

function aiGetExportFormatDescription(pIndex)
    ccall((:aiGetExportFormatDescription, libassimp), Ptr{aiExportFormatDesc}, (Csize_t,), pIndex)
end

function aiReleaseExportFormatDescription(desc)
    ccall((:aiReleaseExportFormatDescription, libassimp), Cvoid, (Ptr{aiExportFormatDesc},), desc)
end

function aiCopyScene(pIn, pOut)
    ccall((:aiCopyScene, libassimp), Cvoid, (Ptr{aiScene}, Ptr{Ptr{aiScene}}), pIn, pOut)
end

function aiFreeScene(pIn)
    ccall((:aiFreeScene, libassimp), Cvoid, (Ptr{aiScene},), pIn)
end

function aiExportScene(pScene, pFormatId, pFileName, pPreprocessing)
    ccall((:aiExportScene, libassimp), aiReturn, (Ptr{aiScene}, Cstring, Cstring, UInt32), pScene, pFormatId, pFileName, pPreprocessing)
end

function aiExportSceneEx(pScene, pFormatId, pFileName, pIO, pPreprocessing)
    ccall((:aiExportSceneEx, libassimp), aiReturn, (Ptr{aiScene}, Cstring, Cstring, Ptr{aiFileIO}, UInt32), pScene, pFormatId, pFileName, pIO, pPreprocessing)
end

function aiExportSceneToBlob(pScene, pFormatId, pPreprocessing)
    ccall((:aiExportSceneToBlob, libassimp), Ptr{aiExportDataBlob}, (Ptr{aiScene}, Cstring, UInt32), pScene, pFormatId, pPreprocessing)
end

function aiReleaseExportBlob(pData)
    ccall((:aiReleaseExportBlob, libassimp), Cvoid, (Ptr{aiExportDataBlob},), pData)
end
# Julia wrapper for header: material.h
# Automatically generated using Clang.jl


function aiGetMaterialProperty(pMat, pKey, type, index, pPropOut)
    ccall((:aiGetMaterialProperty, libassimp), aiReturn, (Ptr{aiMaterial}, Cstring, UInt32, UInt32, Ptr{Ptr{aiMaterialProperty}}), pMat, pKey, type, index, pPropOut)
end

function aiGetMaterialFloatArray(pMat, pKey, type, index, pOut, pMax)
    ccall((:aiGetMaterialFloatArray, libassimp), aiReturn, (Ptr{aiMaterial}, Cstring, UInt32, UInt32, Ptr{ai_real}, Ptr{UInt32}), pMat, pKey, type, index, pOut, pMax)
end

function aiGetMaterialIntegerArray(pMat, pKey, type, index, pOut, pMax)
    ccall((:aiGetMaterialIntegerArray, libassimp), aiReturn, (Ptr{aiMaterial}, Cstring, UInt32, UInt32, Ptr{Cint}, Ptr{UInt32}), pMat, pKey, type, index, pOut, pMax)
end

function aiGetMaterialColor(pMat, pKey, type, index, pOut)
    ccall((:aiGetMaterialColor, libassimp), aiReturn, (Ptr{aiMaterial}, Cstring, UInt32, UInt32, Ptr{aiColor4D}), pMat, pKey, type, index, pOut)
end

function aiGetMaterialUVTransform(pMat, pKey, type, index, pOut)
    ccall((:aiGetMaterialUVTransform, libassimp), aiReturn, (Ptr{aiMaterial}, Cstring, UInt32, UInt32, Ptr{aiUVTransform}), pMat, pKey, type, index, pOut)
end

function aiGetMaterialString(pMat, pKey, type, index, pOut)
    ccall((:aiGetMaterialString, libassimp), aiReturn, (Ptr{aiMaterial}, Cstring, UInt32, UInt32, Ptr{aiString}), pMat, pKey, type, index, pOut)
end

function aiGetMaterialTextureCount(pMat, type)
    ccall((:aiGetMaterialTextureCount, libassimp), UInt32, (Ptr{aiMaterial}, aiTextureType), pMat, type)
end

function aiGetMaterialTexture(mat, type, index, path, mapping, uvindex, blend, op, mapmode, flags)
    ccall((:aiGetMaterialTexture, libassimp), aiReturn, (Ptr{aiMaterial}, aiTextureType, UInt32, Ptr{aiString}, Ptr{aiTextureMapping}, Ptr{UInt32}, Ptr{ai_real}, Ptr{aiTextureOp}, Ptr{aiTextureMapMode}, Ptr{UInt32}), mat, type, index, path, mapping, uvindex, blend, op, mapmode, flags)
end
# Julia wrapper for header: scene.h
# Automatically generated using Clang.jl

# Julia wrapper for header: texture.h
# Automatically generated using Clang.jl

# Julia wrapper for header: quaternion.h
# Automatically generated using Clang.jl

# Julia wrapper for header: pbrmaterial.h
# Automatically generated using Clang.jl

# Julia wrapper for header: mesh.h
# Automatically generated using Clang.jl

# Julia wrapper for header: light.h
# Automatically generated using Clang.jl

# Julia wrapper for header: anim.h
# Automatically generated using Clang.jl

# Julia wrapper for header: camera.h
# Automatically generated using Clang.jl

# Julia wrapper for header: metadata.h
# Automatically generated using Clang.jl

# Julia wrapper for header: version.h
# Automatically generated using Clang.jl


function aiGetLegalString()
    ccall((:aiGetLegalString, libassimp), Cstring, ())
end

function aiGetVersionMinor()
    ccall((:aiGetVersionMinor, libassimp), UInt32, ())
end

function aiGetVersionMajor()
    ccall((:aiGetVersionMajor, libassimp), UInt32, ())
end

function aiGetVersionRevision()
    ccall((:aiGetVersionRevision, libassimp), UInt32, ())
end

function aiGetBranchName()
    ccall((:aiGetBranchName, libassimp), Cstring, ())
end

function aiGetCompileFlags()
    ccall((:aiGetCompileFlags, libassimp), UInt32, ())
end
