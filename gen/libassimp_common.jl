# Automatically generated using Clang.jl


# Skipping MacroDefinition: ASSIMP_API __attribute__ ( ( visibility ( "default" ) ) )
# Skipping MacroDefinition: AI_WONT_RETURN_SUFFIX __attribute__ ( ( noreturn ) )

const ASSIMP_AI_REAL_TEXT_PRECISION = 8
const AI_MATH_PI = 3.141592653589793
const AI_MATH_TWO_PI = AI_MATH_PI * 2.0
const AI_MATH_HALF_PI = AI_MATH_PI * 0.5
const AI_MATH_PI_F = Float32(3.1415926538)
const AI_MATH_TWO_PI_F = AI_MATH_PI_F * Float32(2.0)
const AI_MATH_HALF_PI_F = AI_MATH_PI_F * Float32(0.5)

# Skipping MacroDefinition: AI_DEG_TO_RAD ( x ) ( ( x ) * ( ai_real ) 0.0174532925 )
# Skipping MacroDefinition: AI_RAD_TO_DEG ( x ) ( ( x ) * ( ai_real ) 57.2957795 )
# Skipping MacroDefinition: AI_MAX_ALLOC ( type ) ( ( 256U * 1024 * 1024 ) / sizeof ( type ) )

# const AI_NO_EXCEPT = noexcept
const ai_real = Cfloat
const ai_int = Cint
const ai_uint = UInt32

struct aiVector2D
    x::ai_real
    y::ai_real
end

struct aiVector3D
    x::ai_real
    y::ai_real
    z::ai_real
end

struct aiMatrix3x3
    a1::ai_real
    a2::ai_real
    a3::ai_real
    b1::ai_real
    b2::ai_real
    b3::ai_real
    c1::ai_real
    c2::ai_real
    c3::ai_real
end

struct aiMatrix4x4
    a1::ai_real
    a2::ai_real
    a3::ai_real
    a4::ai_real
    b1::ai_real
    b2::ai_real
    b3::ai_real
    b4::ai_real
    c1::ai_real
    c2::ai_real
    c3::ai_real
    c4::ai_real
    d1::ai_real
    d2::ai_real
    d3::ai_real
    d4::ai_real
end

struct aiColor4D
    r::ai_real
    g::ai_real
    b::ai_real
    a::ai_real
end

const MAXLEN = 1024

@cenum aiReturn::Int32 begin
    aiReturn_SUCCESS = 0
    aiReturn_FAILURE = -1
    aiReturn_OUTOFMEMORY = -3
    _AI_ENFORCE_ENUM_SIZE = 2147483647
end


const AI_SUCCESS = aiReturn_SUCCESS
const AI_FAILURE = aiReturn_FAILURE
const AI_OUTOFMEMORY = aiReturn_OUTOFMEMORY

@cenum aiDefaultLogStream::UInt32 begin
    aiDefaultLogStream_FILE = 1
    aiDefaultLogStream_STDOUT = 2
    aiDefaultLogStream_STDERR = 4
    aiDefaultLogStream_DEBUGGER = 8
    _AI_DLS_ENFORCE_ENUM_SIZE = 2147483647
end


const DLS_FILE = aiDefaultLogStream_FILE
const DLS_STDOUT = aiDefaultLogStream_STDOUT
const DLS_STDERR = aiDefaultLogStream_STDERR
const DLS_DEBUGGER = aiDefaultLogStream_DEBUGGER
const ai_int32 = Int32
const ai_uint32 = UInt32

struct aiPlane
    a::ai_real
    b::ai_real
    c::ai_real
    d::ai_real
end

struct aiRay
    pos::aiVector3D
    dir::aiVector3D
end

struct aiColor3D
    r::ai_real
    g::ai_real
    b::ai_real
end

struct aiString
    length::ai_uint32
    data::NTuple{1024, UInt8}
end

@cenum aiOrigin::UInt32 begin
    aiOrigin_SET = 0
    aiOrigin_CUR = 1
    aiOrigin_END = 2
    _AI_ORIGIN_ENFORCE_ENUM_SIZE = 2147483647
end


struct aiMemoryInfo
    textures::UInt32
    materials::UInt32
    meshes::UInt32
    nodes::UInt32
    animations::UInt32
    cameras::UInt32
    lights::UInt32
    total::UInt32
end

struct aiAABB
    mMin::aiVector3D
    mMax::aiVector3D
end

const aiFileOpenProc = Ptr{Cvoid}
const aiFileCloseProc = Ptr{Cvoid}
const aiUserData = Cstring

struct aiFileIO
    OpenProc::aiFileOpenProc
    CloseProc::aiFileCloseProc
    UserData::aiUserData
end

const aiFileReadProc = Ptr{Cvoid}
const aiFileWriteProc = Ptr{Cvoid}
const aiFileTellProc = Ptr{Cvoid}
const aiFileSeek = Ptr{Cvoid}
const aiFileFlushProc = Ptr{Cvoid}

struct aiFile
    ReadProc::aiFileReadProc
    WriteProc::aiFileWriteProc
    TellProc::aiFileTellProc
    FileSizeProc::aiFileTellProc
    SeekProc::aiFileSeek
    FlushProc::aiFileFlushProc
    UserData::aiUserData
end

const AI_FALSE = 0
const AI_TRUE = 1

struct aiFace
    mNumIndices::UInt32
    mIndices::Ptr{UInt32}
end

struct aiVertexWeight
    mVertexId::UInt32
    mWeight::Cfloat
end

struct aiBone
    mName::aiString
    mNumWeights::UInt32
    mWeights::Ptr{aiVertexWeight}
    mOffsetMatrix::aiMatrix4x4
end

struct aiAnimMesh
    mName::aiString
    mVertices::Ptr{aiVector3D}
    mNormals::Ptr{aiVector3D}
    mTangents::Ptr{aiVector3D}
    mBitangents::Ptr{aiVector3D}
    mColors::NTuple{8, Ptr{aiColor4D}}
    mTextureCoords::NTuple{8, Ptr{aiVector3D}}
    mNumVertices::UInt32
    mWeight::Cfloat
end

struct aiMesh
    mPrimitiveTypes::UInt32
    mNumVertices::UInt32
    mNumFaces::UInt32
    mVertices::Ptr{aiVector3D}
    mNormals::Ptr{aiVector3D}
    mTangents::Ptr{aiVector3D}
    mBitangents::Ptr{aiVector3D}
    mColors::NTuple{8, Ptr{aiColor4D}}
    mTextureCoords::NTuple{8, Ptr{aiVector3D}}
    mNumUVComponents::NTuple{8, UInt32}
    mFaces::Ptr{aiFace}
    mNumBones::UInt32
    mBones::Ptr{Ptr{aiBone}}
    mMaterialIndex::UInt32
    mName::aiString
    mNumAnimMeshes::UInt32
    mAnimMeshes::Ptr{Ptr{aiAnimMesh}}
    mMethod::UInt32
    mAABB::aiAABB
end

@cenum aiPropertyTypeInfo::UInt32 begin
    aiPTI_Float = 1
    aiPTI_Double = 2
    aiPTI_String = 3
    aiPTI_Integer = 4
    aiPTI_Buffer = 5
    _aiPTI_Force32Bit = 2147483647
end


struct aiMaterialProperty
    mKey::aiString
    mSemantic::UInt32
    mIndex::UInt32
    mDataLength::UInt32
    mType::aiPropertyTypeInfo
    mData::Cstring
end

struct aiMaterial
    mProperties::Ptr{Ptr{aiMaterialProperty}}
    mNumProperties::UInt32
    mNumAllocated::UInt32
end

struct aiVectorKey
    mTime::Cdouble
    mValue::aiVector3D
end

struct aiQuaternion
    w::Cint
    x::Cint
    y::Cint
    z::Cint
end

struct aiQuatKey
    mTime::Cdouble
    mValue::aiQuaternion
end

@cenum aiAnimBehaviour::UInt32 begin
    aiAnimBehaviour_DEFAULT = 0
    aiAnimBehaviour_CONSTANT = 1
    aiAnimBehaviour_LINEAR = 2
    aiAnimBehaviour_REPEAT = 3
    _aiAnimBehaviour_Force32Bit = 2147483647
end


struct aiNodeAnim
    mNodeName::aiString
    mNumPositionKeys::UInt32
    mPositionKeys::Ptr{aiVectorKey}
    mNumRotationKeys::UInt32
    mRotationKeys::Ptr{aiQuatKey}
    mNumScalingKeys::UInt32
    mScalingKeys::Ptr{aiVectorKey}
    mPreState::aiAnimBehaviour
    mPostState::aiAnimBehaviour
end

struct aiMeshKey
    mTime::Cdouble
    mValue::UInt32
end

struct aiMeshAnim
    mName::aiString
    mNumKeys::UInt32
    mKeys::Ptr{aiMeshKey}
end

struct aiMeshMorphKey
    mTime::Cdouble
    mValues::Ptr{UInt32}
    mWeights::Ptr{Cdouble}
    mNumValuesAndWeights::UInt32
end

struct aiMeshMorphAnim
    mName::aiString
    mNumKeys::UInt32
    mKeys::Ptr{aiMeshMorphKey}
end

struct aiAnimation
    mName::aiString
    mDuration::Cdouble
    mTicksPerSecond::Cdouble
    mNumChannels::UInt32
    mChannels::Ptr{Ptr{aiNodeAnim}}
    mNumMeshChannels::UInt32
    mMeshChannels::Ptr{Ptr{aiMeshAnim}}
    mNumMorphMeshChannels::UInt32
    mMorphMeshChannels::Ptr{Ptr{aiMeshMorphAnim}}
end

struct aiTexture
    mWidth::UInt32
    mHeight::UInt32
    achFormatHint::NTuple{9, UInt8}
    pcData::Ptr{aiTexel}
    mFilename::aiString
end

@cenum aiLightSourceType::UInt32 begin
    aiLightSource_UNDEFINED = 0
    aiLightSource_DIRECTIONAL = 1
    aiLightSource_POINT = 2
    aiLightSource_SPOT = 3
    aiLightSource_AMBIENT = 4
    aiLightSource_AREA = 5
    _aiLightSource_Force32Bit = 2147483647
end


struct aiLight
    mName::aiString
    mType::aiLightSourceType
    mPosition::aiVector3D
    mDirection::aiVector3D
    mUp::aiVector3D
    mAttenuationConstant::Cfloat
    mAttenuationLinear::Cfloat
    mAttenuationQuadratic::Cfloat
    mColorDiffuse::aiColor3D
    mColorSpecular::aiColor3D
    mColorAmbient::aiColor3D
    mAngleInnerCone::Cfloat
    mAngleOuterCone::Cfloat
    mSize::aiVector2D
end

struct aiCamera
    mName::aiString
    mPosition::aiVector3D
    mUp::aiVector3D
    mLookAt::aiVector3D
    mHorizontalFOV::Cfloat
    mClipPlaneNear::Cfloat
    mClipPlaneFar::Cfloat
    mAspect::Cfloat
end

struct aiMetadata
    mNumProperties::UInt32
    aiString::Cint
    aiMetadataEntry::Cint
end

struct aiScene
    mFlags::UInt32
    mRootNode::Ptr{Cvoid} # Ptr{aiNode}
    mNumMeshes::UInt32
    mMeshes::Ptr{Ptr{aiMesh}}
    mNumMaterials::UInt32
    mMaterials::Ptr{Ptr{aiMaterial}}
    mNumAnimations::UInt32
    mAnimations::Ptr{Ptr{aiAnimation}}
    mNumTextures::UInt32
    mTextures::Ptr{Ptr{aiTexture}}
    mNumLights::UInt32
    mLights::Ptr{Ptr{aiLight}}
    mNumCameras::UInt32
    mCameras::Ptr{Ptr{aiCamera}}
    mMetaData::Ptr{aiMetadata}
    mPrivate::Cstring
end

const aiLogStreamCallback = Ptr{Cvoid}

struct aiLogStream
    callback::aiLogStreamCallback
    user::Cstring
end

struct aiPropertyStore
    sentinel::UInt8
end

const aiBool = Cint

@cenum aiImporterFlags::UInt32 begin
    aiImporterFlags_SupportTextFlavour = 1
    aiImporterFlags_SupportBinaryFlavour = 2
    aiImporterFlags_SupportCompressedFlavour = 4
    aiImporterFlags_LimitedSupport = 8
    aiImporterFlags_Experimental = 16
end


struct aiImporterDesc
    mName::Cstring
    mAuthor::Cstring
    mMaintainer::Cstring
    mComments::Cstring
    mFlags::UInt32
    mMinMajor::UInt32
    mMinMinor::UInt32
    mMaxMajor::UInt32
    mMaxMinor::UInt32
    mFileExtensions::Cstring
end

struct aiExportFormatDesc
    id::Cstring
    description::Cstring
    fileExtension::Cstring
end

struct aiExportDataBlob
    size::Csize_t
    data::Ptr{Cvoid}
    name::aiString
    next::Ptr{aiExportDataBlob}
end

const AI_DEFAULT_MATERIAL_NAME = "DefaultMaterial"

@cenum aiTextureType::UInt32 begin
    aiTextureType_NONE = 0
    aiTextureType_DIFFUSE = 1
    aiTextureType_SPECULAR = 2
    aiTextureType_AMBIENT = 3
    aiTextureType_EMISSIVE = 4
    aiTextureType_HEIGHT = 5
    aiTextureType_NORMALS = 6
    aiTextureType_SHININESS = 7
    aiTextureType_OPACITY = 8
    aiTextureType_DISPLACEMENT = 9
    aiTextureType_LIGHTMAP = 10
    aiTextureType_REFLECTION = 11
    aiTextureType_BASE_COLOR = 12
    aiTextureType_NORMAL_CAMERA = 13
    aiTextureType_EMISSION_COLOR = 14
    aiTextureType_METALNESS = 15
    aiTextureType_DIFFUSE_ROUGHNESS = 16
    aiTextureType_AMBIENT_OCCLUSION = 17
    aiTextureType_UNKNOWN = 18
    _aiTextureType_Force32Bit = 2147483647
end


const AI_TEXTURE_TYPE_MAX = aiTextureType_UNKNOWN

# Skipping MacroDefinition: AI_MATKEY_NAME "?mat.name" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_TWOSIDED "$mat.twosided" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_SHADING_MODEL "$mat.shadingm" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_ENABLE_WIREFRAME "$mat.wireframe" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_BLEND_FUNC "$mat.blend" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_OPACITY "$mat.opacity" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_TRANSPARENCYFACTOR "$mat.transparencyfactor" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_BUMPSCALING "$mat.bumpscaling" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_SHININESS "$mat.shininess" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_REFLECTIVITY "$mat.reflectivity" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_SHININESS_STRENGTH "$mat.shinpercent" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_REFRACTI "$mat.refracti" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_COLOR_DIFFUSE "$clr.diffuse" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_COLOR_AMBIENT "$clr.ambient" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_COLOR_SPECULAR "$clr.specular" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_COLOR_EMISSIVE "$clr.emissive" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_COLOR_TRANSPARENT "$clr.transparent" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_COLOR_REFLECTIVE "$clr.reflective" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_GLOBAL_BACKGROUND_IMAGE "?bg.global" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_GLOBAL_SHADERLANG "?sh.lang" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_SHADER_VERTEX "?sh.vs" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_SHADER_FRAGMENT "?sh.fs" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_SHADER_GEO "?sh.gs" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_SHADER_TESSELATION "?sh.ts" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_SHADER_PRIMITIVE "?sh.ps" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_SHADER_COMPUTE "?sh.cs" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_TEXTURE ( type , N ) _AI_MATKEY_TEXTURE_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_TEXTURE_DIFFUSE ( N ) AI_MATKEY_TEXTURE ( aiTextureType_DIFFUSE , N )
# Skipping MacroDefinition: AI_MATKEY_TEXTURE_SPECULAR ( N ) AI_MATKEY_TEXTURE ( aiTextureType_SPECULAR , N )
# Skipping MacroDefinition: AI_MATKEY_TEXTURE_AMBIENT ( N ) AI_MATKEY_TEXTURE ( aiTextureType_AMBIENT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXTURE_EMISSIVE ( N ) AI_MATKEY_TEXTURE ( aiTextureType_EMISSIVE , N )
# Skipping MacroDefinition: AI_MATKEY_TEXTURE_NORMALS ( N ) AI_MATKEY_TEXTURE ( aiTextureType_NORMALS , N )
# Skipping MacroDefinition: AI_MATKEY_TEXTURE_HEIGHT ( N ) AI_MATKEY_TEXTURE ( aiTextureType_HEIGHT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXTURE_SHININESS ( N ) AI_MATKEY_TEXTURE ( aiTextureType_SHININESS , N )
# Skipping MacroDefinition: AI_MATKEY_TEXTURE_OPACITY ( N ) AI_MATKEY_TEXTURE ( aiTextureType_OPACITY , N )
# Skipping MacroDefinition: AI_MATKEY_TEXTURE_DISPLACEMENT ( N ) AI_MATKEY_TEXTURE ( aiTextureType_DISPLACEMENT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXTURE_LIGHTMAP ( N ) AI_MATKEY_TEXTURE ( aiTextureType_LIGHTMAP , N )
# Skipping MacroDefinition: AI_MATKEY_TEXTURE_REFLECTION ( N ) AI_MATKEY_TEXTURE ( aiTextureType_REFLECTION , N )
# Skipping MacroDefinition: AI_MATKEY_UVWSRC ( type , N ) _AI_MATKEY_UVWSRC_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_UVWSRC_DIFFUSE ( N ) AI_MATKEY_UVWSRC ( aiTextureType_DIFFUSE , N )
# Skipping MacroDefinition: AI_MATKEY_UVWSRC_SPECULAR ( N ) AI_MATKEY_UVWSRC ( aiTextureType_SPECULAR , N )
# Skipping MacroDefinition: AI_MATKEY_UVWSRC_AMBIENT ( N ) AI_MATKEY_UVWSRC ( aiTextureType_AMBIENT , N )
# Skipping MacroDefinition: AI_MATKEY_UVWSRC_EMISSIVE ( N ) AI_MATKEY_UVWSRC ( aiTextureType_EMISSIVE , N )
# Skipping MacroDefinition: AI_MATKEY_UVWSRC_NORMALS ( N ) AI_MATKEY_UVWSRC ( aiTextureType_NORMALS , N )
# Skipping MacroDefinition: AI_MATKEY_UVWSRC_HEIGHT ( N ) AI_MATKEY_UVWSRC ( aiTextureType_HEIGHT , N )
# Skipping MacroDefinition: AI_MATKEY_UVWSRC_SHININESS ( N ) AI_MATKEY_UVWSRC ( aiTextureType_SHININESS , N )
# Skipping MacroDefinition: AI_MATKEY_UVWSRC_OPACITY ( N ) AI_MATKEY_UVWSRC ( aiTextureType_OPACITY , N )
# Skipping MacroDefinition: AI_MATKEY_UVWSRC_DISPLACEMENT ( N ) AI_MATKEY_UVWSRC ( aiTextureType_DISPLACEMENT , N )
# Skipping MacroDefinition: AI_MATKEY_UVWSRC_LIGHTMAP ( N ) AI_MATKEY_UVWSRC ( aiTextureType_LIGHTMAP , N )
# Skipping MacroDefinition: AI_MATKEY_UVWSRC_REFLECTION ( N ) AI_MATKEY_UVWSRC ( aiTextureType_REFLECTION , N )
# Skipping MacroDefinition: AI_MATKEY_TEXOP ( type , N ) _AI_MATKEY_TEXOP_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_TEXOP_DIFFUSE ( N ) AI_MATKEY_TEXOP ( aiTextureType_DIFFUSE , N )
# Skipping MacroDefinition: AI_MATKEY_TEXOP_SPECULAR ( N ) AI_MATKEY_TEXOP ( aiTextureType_SPECULAR , N )
# Skipping MacroDefinition: AI_MATKEY_TEXOP_AMBIENT ( N ) AI_MATKEY_TEXOP ( aiTextureType_AMBIENT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXOP_EMISSIVE ( N ) AI_MATKEY_TEXOP ( aiTextureType_EMISSIVE , N )
# Skipping MacroDefinition: AI_MATKEY_TEXOP_NORMALS ( N ) AI_MATKEY_TEXOP ( aiTextureType_NORMALS , N )
# Skipping MacroDefinition: AI_MATKEY_TEXOP_HEIGHT ( N ) AI_MATKEY_TEXOP ( aiTextureType_HEIGHT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXOP_SHININESS ( N ) AI_MATKEY_TEXOP ( aiTextureType_SHININESS , N )
# Skipping MacroDefinition: AI_MATKEY_TEXOP_OPACITY ( N ) AI_MATKEY_TEXOP ( aiTextureType_OPACITY , N )
# Skipping MacroDefinition: AI_MATKEY_TEXOP_DISPLACEMENT ( N ) AI_MATKEY_TEXOP ( aiTextureType_DISPLACEMENT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXOP_LIGHTMAP ( N ) AI_MATKEY_TEXOP ( aiTextureType_LIGHTMAP , N )
# Skipping MacroDefinition: AI_MATKEY_TEXOP_REFLECTION ( N ) AI_MATKEY_TEXOP ( aiTextureType_REFLECTION , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPING ( type , N ) _AI_MATKEY_MAPPING_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_MAPPING_DIFFUSE ( N ) AI_MATKEY_MAPPING ( aiTextureType_DIFFUSE , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPING_SPECULAR ( N ) AI_MATKEY_MAPPING ( aiTextureType_SPECULAR , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPING_AMBIENT ( N ) AI_MATKEY_MAPPING ( aiTextureType_AMBIENT , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPING_EMISSIVE ( N ) AI_MATKEY_MAPPING ( aiTextureType_EMISSIVE , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPING_NORMALS ( N ) AI_MATKEY_MAPPING ( aiTextureType_NORMALS , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPING_HEIGHT ( N ) AI_MATKEY_MAPPING ( aiTextureType_HEIGHT , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPING_SHININESS ( N ) AI_MATKEY_MAPPING ( aiTextureType_SHININESS , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPING_OPACITY ( N ) AI_MATKEY_MAPPING ( aiTextureType_OPACITY , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPING_DISPLACEMENT ( N ) AI_MATKEY_MAPPING ( aiTextureType_DISPLACEMENT , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPING_LIGHTMAP ( N ) AI_MATKEY_MAPPING ( aiTextureType_LIGHTMAP , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPING_REFLECTION ( N ) AI_MATKEY_MAPPING ( aiTextureType_REFLECTION , N )
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND ( type , N ) _AI_MATKEY_TEXBLEND_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND_DIFFUSE ( N ) AI_MATKEY_TEXBLEND ( aiTextureType_DIFFUSE , N )
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND_SPECULAR ( N ) AI_MATKEY_TEXBLEND ( aiTextureType_SPECULAR , N )
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND_AMBIENT ( N ) AI_MATKEY_TEXBLEND ( aiTextureType_AMBIENT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND_EMISSIVE ( N ) AI_MATKEY_TEXBLEND ( aiTextureType_EMISSIVE , N )
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND_NORMALS ( N ) AI_MATKEY_TEXBLEND ( aiTextureType_NORMALS , N )
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND_HEIGHT ( N ) AI_MATKEY_TEXBLEND ( aiTextureType_HEIGHT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND_SHININESS ( N ) AI_MATKEY_TEXBLEND ( aiTextureType_SHININESS , N )
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND_OPACITY ( N ) AI_MATKEY_TEXBLEND ( aiTextureType_OPACITY , N )
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND_DISPLACEMENT ( N ) AI_MATKEY_TEXBLEND ( aiTextureType_DISPLACEMENT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND_LIGHTMAP ( N ) AI_MATKEY_TEXBLEND ( aiTextureType_LIGHTMAP , N )
# Skipping MacroDefinition: AI_MATKEY_TEXBLEND_REFLECTION ( N ) AI_MATKEY_TEXBLEND ( aiTextureType_REFLECTION , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U ( type , N ) _AI_MATKEY_MAPPINGMODE_U_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U_DIFFUSE ( N ) AI_MATKEY_MAPPINGMODE_U ( aiTextureType_DIFFUSE , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U_SPECULAR ( N ) AI_MATKEY_MAPPINGMODE_U ( aiTextureType_SPECULAR , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U_AMBIENT ( N ) AI_MATKEY_MAPPINGMODE_U ( aiTextureType_AMBIENT , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U_EMISSIVE ( N ) AI_MATKEY_MAPPINGMODE_U ( aiTextureType_EMISSIVE , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U_NORMALS ( N ) AI_MATKEY_MAPPINGMODE_U ( aiTextureType_NORMALS , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U_HEIGHT ( N ) AI_MATKEY_MAPPINGMODE_U ( aiTextureType_HEIGHT , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U_SHININESS ( N ) AI_MATKEY_MAPPINGMODE_U ( aiTextureType_SHININESS , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U_OPACITY ( N ) AI_MATKEY_MAPPINGMODE_U ( aiTextureType_OPACITY , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U_DISPLACEMENT ( N ) AI_MATKEY_MAPPINGMODE_U ( aiTextureType_DISPLACEMENT , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U_LIGHTMAP ( N ) AI_MATKEY_MAPPINGMODE_U ( aiTextureType_LIGHTMAP , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_U_REFLECTION ( N ) AI_MATKEY_MAPPINGMODE_U ( aiTextureType_REFLECTION , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V ( type , N ) _AI_MATKEY_MAPPINGMODE_V_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V_DIFFUSE ( N ) AI_MATKEY_MAPPINGMODE_V ( aiTextureType_DIFFUSE , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V_SPECULAR ( N ) AI_MATKEY_MAPPINGMODE_V ( aiTextureType_SPECULAR , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V_AMBIENT ( N ) AI_MATKEY_MAPPINGMODE_V ( aiTextureType_AMBIENT , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V_EMISSIVE ( N ) AI_MATKEY_MAPPINGMODE_V ( aiTextureType_EMISSIVE , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V_NORMALS ( N ) AI_MATKEY_MAPPINGMODE_V ( aiTextureType_NORMALS , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V_HEIGHT ( N ) AI_MATKEY_MAPPINGMODE_V ( aiTextureType_HEIGHT , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V_SHININESS ( N ) AI_MATKEY_MAPPINGMODE_V ( aiTextureType_SHININESS , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V_OPACITY ( N ) AI_MATKEY_MAPPINGMODE_V ( aiTextureType_OPACITY , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V_DISPLACEMENT ( N ) AI_MATKEY_MAPPINGMODE_V ( aiTextureType_DISPLACEMENT , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V_LIGHTMAP ( N ) AI_MATKEY_MAPPINGMODE_V ( aiTextureType_LIGHTMAP , N )
# Skipping MacroDefinition: AI_MATKEY_MAPPINGMODE_V_REFLECTION ( N ) AI_MATKEY_MAPPINGMODE_V ( aiTextureType_REFLECTION , N )
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS ( type , N ) _AI_MATKEY_TEXMAP_AXIS_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS_DIFFUSE ( N ) AI_MATKEY_TEXMAP_AXIS ( aiTextureType_DIFFUSE , N )
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS_SPECULAR ( N ) AI_MATKEY_TEXMAP_AXIS ( aiTextureType_SPECULAR , N )
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS_AMBIENT ( N ) AI_MATKEY_TEXMAP_AXIS ( aiTextureType_AMBIENT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS_EMISSIVE ( N ) AI_MATKEY_TEXMAP_AXIS ( aiTextureType_EMISSIVE , N )
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS_NORMALS ( N ) AI_MATKEY_TEXMAP_AXIS ( aiTextureType_NORMALS , N )
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS_HEIGHT ( N ) AI_MATKEY_TEXMAP_AXIS ( aiTextureType_HEIGHT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS_SHININESS ( N ) AI_MATKEY_TEXMAP_AXIS ( aiTextureType_SHININESS , N )
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS_OPACITY ( N ) AI_MATKEY_TEXMAP_AXIS ( aiTextureType_OPACITY , N )
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS_DISPLACEMENT ( N ) AI_MATKEY_TEXMAP_AXIS ( aiTextureType_DISPLACEMENT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS_LIGHTMAP ( N ) AI_MATKEY_TEXMAP_AXIS ( aiTextureType_LIGHTMAP , N )
# Skipping MacroDefinition: AI_MATKEY_TEXMAP_AXIS_REFLECTION ( N ) AI_MATKEY_TEXMAP_AXIS ( aiTextureType_REFLECTION , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM ( type , N ) _AI_MATKEY_UVTRANSFORM_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_DIFFUSE ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_DIFFUSE , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_SPECULAR ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_SPECULAR , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_AMBIENT ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_AMBIENT , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_EMISSIVE ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_EMISSIVE , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_NORMALS ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_NORMALS , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_HEIGHT ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_HEIGHT , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_SHININESS ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_SHININESS , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_OPACITY ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_OPACITY , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_DISPLACEMENT ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_DISPLACEMENT , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_LIGHTMAP ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_LIGHTMAP , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_REFLECTION ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_REFLECTION , N )
# Skipping MacroDefinition: AI_MATKEY_UVTRANSFORM_UNKNOWN ( N ) AI_MATKEY_UVTRANSFORM ( aiTextureType_UNKNOWN , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS ( type , N ) _AI_MATKEY_TEXFLAGS_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_DIFFUSE ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_DIFFUSE , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_SPECULAR ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_SPECULAR , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_AMBIENT ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_AMBIENT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_EMISSIVE ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_EMISSIVE , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_NORMALS ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_NORMALS , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_HEIGHT ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_HEIGHT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_SHININESS ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_SHININESS , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_OPACITY ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_OPACITY , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_DISPLACEMENT ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_DISPLACEMENT , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_LIGHTMAP ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_LIGHTMAP , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_REFLECTION ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_REFLECTION , N )
# Skipping MacroDefinition: AI_MATKEY_TEXFLAGS_UNKNOWN ( N ) AI_MATKEY_TEXFLAGS ( aiTextureType_UNKNOWN , N )
# Skipping MacroDefinition: aiGetMaterialFloat ( pMat , type , index , pKey , pOut ) aiGetMaterialFloatArray ( pMat , type , index , pKey , pOut , NULL )
# Skipping MacroDefinition: aiGetMaterialInteger ( pMat , type , index , pKey , pOut ) aiGetMaterialIntegerArray ( pMat , type , index , pKey , pOut , NULL )

@cenum aiTextureOp::UInt32 begin
    aiTextureOp_Multiply = 0
    aiTextureOp_Add = 1
    aiTextureOp_Subtract = 2
    aiTextureOp_Divide = 3
    aiTextureOp_SmoothAdd = 4
    aiTextureOp_SignedAdd = 5
    _aiTextureOp_Force32Bit = 2147483647
end

@cenum aiTextureMapMode::UInt32 begin
    aiTextureMapMode_Wrap = 0
    aiTextureMapMode_Clamp = 1
    aiTextureMapMode_Decal = 3
    aiTextureMapMode_Mirror = 2
    _aiTextureMapMode_Force32Bit = 2147483647
end

@cenum aiTextureMapping::UInt32 begin
    aiTextureMapping_UV = 0
    aiTextureMapping_SPHERE = 1
    aiTextureMapping_CYLINDER = 2
    aiTextureMapping_BOX = 3
    aiTextureMapping_PLANE = 4
    aiTextureMapping_OTHER = 5
    _aiTextureMapping_Force32Bit = 2147483647
end

@cenum aiShadingMode::UInt32 begin
    aiShadingMode_Flat = 1
    aiShadingMode_Gouraud = 2
    aiShadingMode_Phong = 3
    aiShadingMode_Blinn = 4
    aiShadingMode_Toon = 5
    aiShadingMode_OrenNayar = 6
    aiShadingMode_Minnaert = 7
    aiShadingMode_CookTorrance = 8
    aiShadingMode_NoShading = 9
    aiShadingMode_Fresnel = 10
    _aiShadingMode_Force32Bit = 2147483647
end

@cenum aiTextureFlags::UInt32 begin
    aiTextureFlags_Invert = 1
    aiTextureFlags_UseAlpha = 2
    aiTextureFlags_IgnoreAlpha = 4
    _aiTextureFlags_Force32Bit = 2147483647
end

@cenum aiBlendMode::UInt32 begin
    aiBlendMode_Default = 0
    aiBlendMode_Additive = 1
    _aiBlendMode_Force32Bit = 2147483647
end


struct aiUVTransform
    mTranslation::aiVector2D
    mScaling::aiVector2D
    mRotation::ai_real
end

const AI_SCENE_FLAGS_INCOMPLETE = 0x01
const AI_SCENE_FLAGS_VALIDATED = 0x02
const AI_SCENE_FLAGS_VALIDATION_WARNING = 0x04
const AI_SCENE_FLAGS_NON_VERBOSE_FORMAT = 0x08
const AI_SCENE_FLAGS_TERRAIN = 0x10
const AI_SCENE_FLAGS_ALLOW_SHARED = 0x20
const AI_EMBEDDED_TEXNAME_PREFIX = "*"

# Skipping MacroDefinition: AI_MAKE_EMBEDDED_TEXNAME ( _n_ ) AI_EMBEDDED_TEXNAME_PREFIX # _n_

const HINTMAXTEXTURELEN = 9

# Skipping MacroDefinition: AI_MATKEY_GLTF_PBRMETALLICROUGHNESS_BASE_COLOR_FACTOR "$mat.gltf.pbrMetallicRoughness.baseColorFactor" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_GLTF_PBRMETALLICROUGHNESS_METALLIC_FACTOR "$mat.gltf.pbrMetallicRoughness.metallicFactor" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_GLTF_PBRMETALLICROUGHNESS_ROUGHNESS_FACTOR "$mat.gltf.pbrMetallicRoughness.roughnessFactor" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_GLTF_PBRMETALLICROUGHNESS_BASE_COLOR_TEXTURE aiTextureType_DIFFUSE , 1
# Skipping MacroDefinition: AI_MATKEY_GLTF_PBRMETALLICROUGHNESS_METALLICROUGHNESS_TEXTURE aiTextureType_UNKNOWN , 0
# Skipping MacroDefinition: AI_MATKEY_GLTF_ALPHAMODE "$mat.gltf.alphaMode" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_GLTF_ALPHACUTOFF "$mat.gltf.alphaCutoff" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_GLTF_PBRSPECULARGLOSSINESS "$mat.gltf.pbrSpecularGlossiness" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_GLTF_PBRSPECULARGLOSSINESS_GLOSSINESS_FACTOR "$mat.gltf.pbrMetallicRoughness.glossinessFactor" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_GLTF_UNLIT "$mat.gltf.unlit" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_GLTF_TEXTURE_TEXCOORD ( type , N ) _AI_MATKEY_GLTF_TEXTURE_TEXCOORD_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_GLTF_MAPPINGNAME ( type , N ) _AI_MATKEY_GLTF_MAPPINGNAME_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_GLTF_MAPPINGID ( type , N ) _AI_MATKEY_GLTF_MAPPINGID_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_GLTF_MAPPINGFILTER_MAG ( type , N ) _AI_MATKEY_GLTF_MAPPINGFILTER_MAG_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_GLTF_MAPPINGFILTER_MIN ( type , N ) _AI_MATKEY_GLTF_MAPPINGFILTER_MIN_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_GLTF_TEXTURE_SCALE ( type , N ) _AI_MATKEY_GLTF_SCALE_BASE , type , N
# Skipping MacroDefinition: AI_MATKEY_GLTF_TEXTURE_STRENGTH ( type , N ) _AI_MATKEY_GLTF_STRENGTH_BASE , type , N

const AI_MAX_FACE_INDICES = Float32(0x07ff)
const AI_MAX_BONE_WEIGHTS = Float32(0x07ffffff)
const AI_MAX_VERTICES = Float32(0x07ffffff)
const AI_MAX_FACES = Float32(0x07ffffff)
const AI_MAX_NUMBER_OF_COLOR_SETS = 0x08
const AI_MAX_NUMBER_OF_TEXTURECOORDS = 0x08

# Skipping MacroDefinition: AI_PRIMITIVE_TYPE_FOR_N_INDICES ( n ) ( ( n ) > 3 ? aiPrimitiveType_POLYGON : ( aiPrimitiveType ) ( 1u << ( ( n ) - 1 ) ) )

@cenum aiPrimitiveType::UInt32 begin
    aiPrimitiveType_POINT = 1
    aiPrimitiveType_LINE = 2
    aiPrimitiveType_TRIANGLE = 4
    aiPrimitiveType_POLYGON = 8
    _aiPrimitiveType_Force32Bit = 2147483647
end

@cenum aiMorphingMethod::UInt32 begin
    aiMorphingMethod_VERTEX_BLEND = 1
    aiMorphingMethod_MORPH_NORMALIZED = 2
    aiMorphingMethod_MORPH_RELATIVE = 3
    _aiMorphingMethod_Force32Bit = 2147483647
end

@cenum aiMetadataType::UInt32 begin
    AI_BOOL = 0
    AI_INT32 = 1
    AI_UINT64 = 2
    AI_FLOAT = 3
    AI_DOUBLE = 4
    AI_AISTRING = 5
    AI_AIVECTOR3D = 6
    AI_META_MAX = 7
    FORCE_32BIT = 8
end


struct aiMetadataEntry
    mType::aiMetadataType
    mData::Ptr{Cvoid}
end

const ASSIMP_CFLAGS_SHARED = 0x01
const ASSIMP_CFLAGS_STLPORT = 0x02
const ASSIMP_CFLAGS_DEBUG = 0x04
const ASSIMP_CFLAGS_NOBOOST = 0x08
const ASSIMP_CFLAGS_SINGLETHREADED = 0x10
