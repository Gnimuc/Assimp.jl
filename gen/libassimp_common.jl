# Automatically generated using Clang.jl
const aiUVTransform = Cvoid
const aiTexel = Cvoid
const aiNode = Cvoid

# Skipping MacroDefinition: SIZE_MAX ( ~ ( ( size_t ) 0 ) )
# Skipping MacroDefinition: UINT_MAX ( ~ ( ( unsigned int ) 0 ) )

const AI_INT_MERGE_SCENE_GEN_UNIQUE_NAMES = 0x01
const AI_INT_MERGE_SCENE_GEN_UNIQUE_MATNAMES = 0x02
const AI_INT_MERGE_SCENE_DUPLICATES_DEEP_CPY = 0x04
const AI_INT_MERGE_SCENE_RESOLVE_CROSS_ATTACHMENTS = 0x08
const AI_INT_MERGE_SCENE_GEN_UNIQUE_NAMES_IF_NECESSARY = 0x10
const ai_real = Cfloat

struct aiVector3D
    x::ai_real
    y::ai_real
    z::ai_real
end

struct aiColor4D
    r::ai_real
    g::ai_real
    b::ai_real
    a::ai_real
end

struct aiFace
    mNumIndices::UInt32
    mIndices::Ptr{UInt32}
end

struct aiString
    length::Csize_t
    data::NTuple{1024, UInt8}
end

struct aiVertexWeight
    mVertexId::UInt32
    mWeight::Cfloat
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

struct aiBone
    mName::aiString
    mNumWeights::UInt32
    mWeights::Ptr{aiVertexWeight}
    mOffsetMatrix::aiMatrix4x4
end

struct aiAnimMesh
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
end

@cenum(aiPropertyTypeInfo,
    aiPTI_Float = 1,
    aiPTI_Double = 2,
    aiPTI_String = 3,
    aiPTI_Integer = 4,
    aiPTI_Buffer = 5,
    _aiPTI_Force32Bit = 2147483647,
)

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

@cenum(aiAnimBehaviour,
    aiAnimBehaviour_DEFAULT = 0,
    aiAnimBehaviour_CONSTANT = 1,
    aiAnimBehaviour_LINEAR = 2,
    aiAnimBehaviour_REPEAT = 3,
    _aiAnimBehaviour_Force32Bit = 2147483647,
)

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
end

@cenum(aiLightSourceType,
    aiLightSource_UNDEFINED = 0,
    aiLightSource_DIRECTIONAL = 1,
    aiLightSource_POINT = 2,
    aiLightSource_SPOT = 3,
    aiLightSource_AMBIENT = 4,
    aiLightSource_AREA = 5,
    _aiLightSource_Force32Bit = 2147483647,
)

struct aiColor3D
    r::ai_real
    g::ai_real
    b::ai_real
end

struct aiVector2D
    x::ai_real
    y::ai_real
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

struct aiScene
    mFlags::UInt32
    mRootNode::Ptr{aiNode}
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
    mPrivate::Cstring
end

struct aiMetadata
    mNumProperties::UInt32
    aiString::Cint
    aiMetadataEntry::Cint
end

const aiFileOpenProc = Ptr{Cvoid}
const aiFileCloseProc = Ptr{Cvoid}
const aiUserData = Cstring

struct aiFileIO
    OpenProc::aiFileOpenProc
    CloseProc::aiFileCloseProc
    UserData::aiUserData
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
const aiLogStreamCallback = Ptr{Cvoid}

struct aiLogStream
    callback::aiLogStreamCallback
    user::Cstring
end

struct aiPropertyStore
    sentinel::UInt8
end

const aiBool = Cint
const AI_CONFIG_GLOB_MEASURE_TIME = "GLOB_MEASURE_TIME"
const AI_CONFIG_IMPORT_NO_SKELETON_MESHES = "IMPORT_NO_SKELETON_MESHES"
const AI_CONFIG_PP_SBBC_MAX_BONES = "PP_SBBC_MAX_BONES"
const AI_SBBC_DEFAULT_MAX_BONES = 60
const AI_CONFIG_PP_CT_MAX_SMOOTHING_ANGLE = "PP_CT_MAX_SMOOTHING_ANGLE"
const AI_CONFIG_PP_CT_TEXTURE_CHANNEL_INDEX = "PP_CT_TEXTURE_CHANNEL_INDEX"
const AI_CONFIG_PP_GSN_MAX_SMOOTHING_ANGLE = "PP_GSN_MAX_SMOOTHING_ANGLE"
const AI_CONFIG_IMPORT_MDL_COLORMAP = "IMPORT_MDL_COLORMAP"
const AI_CONFIG_PP_RRM_EXCLUDE_LIST = "PP_RRM_EXCLUDE_LIST"
const AI_CONFIG_PP_PTV_KEEP_HIERARCHY = "PP_PTV_KEEP_HIERARCHY"
const AI_CONFIG_PP_PTV_NORMALIZE = "PP_PTV_NORMALIZE"
const AI_CONFIG_PP_PTV_ADD_ROOT_TRANSFORMATION = "PP_PTV_ADD_ROOT_TRANSFORMATION"
const AI_CONFIG_PP_PTV_ROOT_TRANSFORMATION = "PP_PTV_ROOT_TRANSFORMATION"
const AI_CONFIG_PP_FD_REMOVE = "PP_FD_REMOVE"
const AI_CONFIG_PP_FD_CHECKAREA = "PP_FD_CHECKAREA"
const AI_CONFIG_PP_OG_EXCLUDE_LIST = "PP_OG_EXCLUDE_LIST"
const AI_CONFIG_PP_SLM_TRIANGLE_LIMIT = "PP_SLM_TRIANGLE_LIMIT"
const AI_SLM_DEFAULT_MAX_TRIANGLES = 1000000
const AI_CONFIG_PP_SLM_VERTEX_LIMIT = "PP_SLM_VERTEX_LIMIT"
const AI_SLM_DEFAULT_MAX_VERTICES = 1000000
const AI_CONFIG_PP_LBW_MAX_WEIGHTS = "PP_LBW_MAX_WEIGHTS"
const AI_LMW_MAX_WEIGHTS = 0x04
const AI_CONFIG_PP_DB_THRESHOLD = "PP_DB_THRESHOLD"
const AI_DEBONE_THRESHOLD = Float32(1.0)
const AI_CONFIG_PP_DB_ALL_OR_NONE = "PP_DB_ALL_OR_NONE"
const PP_ICL_PTCACHE_SIZE = 12
const AI_CONFIG_PP_ICL_PTCACHE_SIZE = "PP_ICL_PTCACHE_SIZE"

# Skipping MacroDefinition: aiComponent_COLORSn ( n ) ( 1u << ( n + 20u ) )
# Skipping MacroDefinition: aiComponent_TEXCOORDSn ( n ) ( 1u << ( n + 25u ) )

const AI_CONFIG_PP_RVC_FLAGS = "PP_RVC_FLAGS"
const AI_CONFIG_PP_SBP_REMOVE = "PP_SBP_REMOVE"
const AI_CONFIG_PP_FID_ANIM_ACCURACY = "PP_FID_ANIM_ACCURACY"
const AI_UVTRAFO_SCALING = 0x01
const AI_UVTRAFO_ROTATION = 0x02
const AI_UVTRAFO_TRANSLATION = 0x04
const AI_UVTRAFO_ALL = (AI_UVTRAFO_SCALING | AI_UVTRAFO_ROTATION) | AI_UVTRAFO_TRANSLATION
const AI_CONFIG_PP_TUV_EVALUATE = "PP_TUV_EVALUATE"
const AI_CONFIG_FAVOUR_SPEED = "FAVOUR_SPEED"
const AI_CONFIG_IMPORT_FBX_READ_ALL_GEOMETRY_LAYERS = "IMPORT_FBX_READ_ALL_GEOMETRY_LAYERS"
const AI_CONFIG_IMPORT_FBX_READ_ALL_MATERIALS = "IMPORT_FBX_READ_ALL_MATERIALS"
const AI_CONFIG_IMPORT_FBX_READ_MATERIALS = "IMPORT_FBX_READ_MATERIALS"
const AI_CONFIG_IMPORT_FBX_READ_TEXTURES = "IMPORT_FBX_READ_TEXTURES"
const AI_CONFIG_IMPORT_FBX_READ_CAMERAS = "IMPORT_FBX_READ_CAMERAS"
const AI_CONFIG_IMPORT_FBX_READ_LIGHTS = "IMPORT_FBX_READ_LIGHTS"
const AI_CONFIG_IMPORT_FBX_READ_ANIMATIONS = "IMPORT_FBX_READ_ANIMATIONS"
const AI_CONFIG_IMPORT_FBX_STRICT_MODE = "IMPORT_FBX_STRICT_MODE"
const AI_CONFIG_IMPORT_FBX_PRESERVE_PIVOTS = "IMPORT_FBX_PRESERVE_PIVOTS"
const AI_CONFIG_IMPORT_FBX_OPTIMIZE_EMPTY_ANIMATION_CURVES = "IMPORT_FBX_OPTIMIZE_EMPTY_ANIMATION_CURVES"
const AI_CONFIG_IMPORT_FBX_SEARCH_EMBEDDED_TEXTURES = "IMPORT_FBX_SEARCH_EMBEDDED_TEXTURES"
const AI_CONFIG_IMPORT_GLOBAL_KEYFRAME = "IMPORT_GLOBAL_KEYFRAME"
const AI_CONFIG_IMPORT_MD3_KEYFRAME = "IMPORT_MD3_KEYFRAME"
const AI_CONFIG_IMPORT_MD2_KEYFRAME = "IMPORT_MD2_KEYFRAME"
const AI_CONFIG_IMPORT_MDL_KEYFRAME = "IMPORT_MDL_KEYFRAME"
const AI_CONFIG_IMPORT_MDC_KEYFRAME = "IMPORT_MDC_KEYFRAME"
const AI_CONFIG_IMPORT_SMD_KEYFRAME = "IMPORT_SMD_KEYFRAME"
const AI_CONFIG_IMPORT_UNREAL_KEYFRAME = "IMPORT_UNREAL_KEYFRAME"
const AI_CONFIG_IMPORT_AC_SEPARATE_BFCULL = "IMPORT_AC_SEPARATE_BFCULL"
const AI_CONFIG_IMPORT_AC_EVAL_SUBDIVISION = "IMPORT_AC_EVAL_SUBDIVISION"
const AI_CONFIG_IMPORT_UNREAL_HANDLE_FLAGS = "UNREAL_HANDLE_FLAGS"
const AI_CONFIG_IMPORT_TER_MAKE_UVS = "IMPORT_TER_MAKE_UVS"
const AI_CONFIG_IMPORT_ASE_RECONSTRUCT_NORMALS = "IMPORT_ASE_RECONSTRUCT_NORMALS"
const AI_CONFIG_IMPORT_MD3_HANDLE_MULTIPART = "IMPORT_MD3_HANDLE_MULTIPART"
const AI_CONFIG_IMPORT_MD3_SKIN_NAME = "IMPORT_MD3_SKIN_NAME"
const AI_CONFIG_IMPORT_MD3_SHADER_SRC = "IMPORT_MD3_SHADER_SRC"
const AI_CONFIG_IMPORT_LWO_ONE_LAYER_ONLY = "IMPORT_LWO_ONE_LAYER_ONLY"
const AI_CONFIG_IMPORT_MD5_NO_ANIM_AUTOLOAD = "IMPORT_MD5_NO_ANIM_AUTOLOAD"
const AI_CONFIG_IMPORT_LWS_ANIM_START = "IMPORT_LWS_ANIM_START"
const AI_CONFIG_IMPORT_LWS_ANIM_END = "IMPORT_LWS_ANIM_END"
const AI_CONFIG_IMPORT_IRR_ANIM_FPS = "IMPORT_IRR_ANIM_FPS"
const AI_CONFIG_IMPORT_OGRE_MATERIAL_FILE = "IMPORT_OGRE_MATERIAL_FILE"
const AI_CONFIG_IMPORT_OGRE_TEXTURETYPE_FROM_FILENAME = "IMPORT_OGRE_TEXTURETYPE_FROM_FILENAME"
const AI_CONFIG_ANDROID_JNI_ASSIMP_MANAGER_SUPPORT = "AI_CONFIG_ANDROID_JNI_ASSIMP_MANAGER_SUPPORT"
const AI_CONFIG_IMPORT_IFC_SKIP_SPACE_REPRESENTATIONS = "IMPORT_IFC_SKIP_SPACE_REPRESENTATIONS"
const AI_CONFIG_IMPORT_IFC_CUSTOM_TRIANGULATION = "IMPORT_IFC_CUSTOM_TRIANGULATION"
const AI_CONFIG_IMPORT_IFC_SMOOTHING_ANGLE = "IMPORT_IFC_SMOOTHING_ANGLE"
const AI_IMPORT_IFC_DEFAULT_SMOOTHING_ANGLE = Float32(10.0)
const AI_CONFIG_IMPORT_IFC_CYLINDRICAL_TESSELLATION = "IMPORT_IFC_CYLINDRICAL_TESSELLATION"
const AI_IMPORT_IFC_DEFAULT_CYLINDRICAL_TESSELLATION = 32
const AI_CONFIG_IMPORT_COLLADA_IGNORE_UP_DIRECTION = "IMPORT_COLLADA_IGNORE_UP_DIRECTION"
const AI_CONFIG_EXPORT_XFILE_64BIT = "EXPORT_XFILE_64BIT"
const AI_CONFIG_GLOBAL_SCALE_FACTOR_KEY = "GLOBAL_SCALE_FACTOR"
const AI_CONFIG_GLOBAL_SCALE_FACTOR_DEFAULT = Float32(1.0)

@cenum(aiComponent,
    aiComponent_NORMALS = 2,
    aiComponent_TANGENTS_AND_BITANGENTS = 4,
    aiComponent_COLORS = 8,
    aiComponent_TEXCOORDS = 16,
    aiComponent_BONEWEIGHTS = 32,
    aiComponent_ANIMATIONS = 64,
    aiComponent_TEXTURES = 128,
    aiComponent_LIGHTS = 256,
    aiComponent_CAMERAS = 512,
    aiComponent_MESHES = 1024,
    aiComponent_MATERIALS = 2048,
    _aiComponent_Force32Bit = 2684354559,
)

# Skipping MacroDefinition: ASSIMP_API __attribute__ ( ( visibility ( "default" ) ) )
# Skipping MacroDefinition: AI_WONT_RETURN_SUFFIX __attribute__ ( ( noreturn ) )

const AI_MATH_PI = 3.141592653589793
const AI_MATH_TWO_PI = AI_MATH_PI * 2.0
const AI_MATH_HALF_PI = AI_MATH_PI * 0.5
const AI_MATH_PI_F = Float32(3.1415926538)
const AI_MATH_TWO_PI_F = AI_MATH_PI_F * Float32(2.0)
const AI_MATH_HALF_PI_F = AI_MATH_PI_F * Float32(0.5)

# Skipping MacroDefinition: AI_DEG_TO_RAD ( x ) ( ( x ) * ( ai_real ) 0.0174532925 )
# Skipping MacroDefinition: AI_RAD_TO_DEG ( x ) ( ( x ) * ( ai_real ) 57.2957795 )
# Skipping MacroDefinition: AI_MAX_ALLOC ( type ) ( ( 256U * 1024 * 1024 ) / sizeof ( type ) )

const ai_int = Cint
const ai_uint = UInt32

@cenum(aiImporterFlags,
    aiImporterFlags_SupportTextFlavour = 1,
    aiImporterFlags_SupportBinaryFlavour = 2,
    aiImporterFlags_SupportCompressedFlavour = 4,
    aiImporterFlags_LimitedSupport = 8,
    aiImporterFlags_Experimental = 16,
)

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

const AI_DEFAULT_MATERIAL_NAME = "DefaultMaterial"

@cenum(aiTextureType,
    aiTextureType_NONE = 0,
    aiTextureType_DIFFUSE = 1,
    aiTextureType_SPECULAR = 2,
    aiTextureType_AMBIENT = 3,
    aiTextureType_EMISSIVE = 4,
    aiTextureType_HEIGHT = 5,
    aiTextureType_NORMALS = 6,
    aiTextureType_SHININESS = 7,
    aiTextureType_OPACITY = 8,
    aiTextureType_DISPLACEMENT = 9,
    aiTextureType_LIGHTMAP = 10,
    aiTextureType_REFLECTION = 11,
    aiTextureType_UNKNOWN = 12,
    _aiTextureType_Force32Bit = 2147483647,
)

const AI_TEXTURE_TYPE_MAX = aiTextureType_UNKNOWN

# Skipping MacroDefinition: AI_MATKEY_NAME "?mat.name" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_TWOSIDED "$mat.twosided" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_SHADING_MODEL "$mat.shadingm" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_ENABLE_WIREFRAME "$mat.wireframe" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_BLEND_FUNC "$mat.blend" , 0 , 0
# Skipping MacroDefinition: AI_MATKEY_OPACITY "$mat.opacity" , 0 , 0
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

@cenum(aiTextureOp,
    aiTextureOp_Multiply = 0,
    aiTextureOp_Add = 1,
    aiTextureOp_Subtract = 2,
    aiTextureOp_Divide = 3,
    aiTextureOp_SmoothAdd = 4,
    aiTextureOp_SignedAdd = 5,
    _aiTextureOp_Force32Bit = 2147483647,
)
@cenum(aiTextureMapMode,
    aiTextureMapMode_Wrap = 0,
    aiTextureMapMode_Clamp = 1,
    aiTextureMapMode_Decal = 3,
    aiTextureMapMode_Mirror = 2,
    _aiTextureMapMode_Force32Bit = 2147483647,
)
@cenum(aiTextureMapping,
    aiTextureMapping_UV = 0,
    aiTextureMapping_SPHERE = 1,
    aiTextureMapping_CYLINDER = 2,
    aiTextureMapping_BOX = 3,
    aiTextureMapping_PLANE = 4,
    aiTextureMapping_OTHER = 5,
    _aiTextureMapping_Force32Bit = 2147483647,
)
@cenum(aiShadingMode,
    aiShadingMode_Flat = 1,
    aiShadingMode_Gouraud = 2,
    aiShadingMode_Phong = 3,
    aiShadingMode_Blinn = 4,
    aiShadingMode_Toon = 5,
    aiShadingMode_OrenNayar = 6,
    aiShadingMode_Minnaert = 7,
    aiShadingMode_CookTorrance = 8,
    aiShadingMode_NoShading = 9,
    aiShadingMode_Fresnel = 10,
    _aiShadingMode_Force32Bit = 2147483647,
)
@cenum(aiTextureFlags,
    aiTextureFlags_Invert = 1,
    aiTextureFlags_UseAlpha = 2,
    aiTextureFlags_IgnoreAlpha = 4,
    _aiTextureFlags_Force32Bit = 2147483647,
)
@cenum(aiBlendMode,
    aiBlendMode_Default = 0,
    aiBlendMode_Additive = 1,
    _aiBlendMode_Force32Bit = 2147483647,
)

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

const AI_MAX_FACE_INDICES = Float32(0x07ff)
const AI_MAX_BONE_WEIGHTS = Float32(0x07ffffff)
const AI_MAX_VERTICES = Float32(0x07ffffff)
const AI_MAX_FACES = Float32(0x07ffffff)
const AI_MAX_NUMBER_OF_COLOR_SETS = 0x08
const AI_MAX_NUMBER_OF_TEXTURECOORDS = 0x08

# Skipping MacroDefinition: AI_PRIMITIVE_TYPE_FOR_N_INDICES ( n ) ( ( n ) > 3 ? aiPrimitiveType_POLYGON : ( aiPrimitiveType ) ( 1u << ( ( n ) - 1 ) ) )

@cenum(aiPrimitiveType,
    aiPrimitiveType_POINT = 1,
    aiPrimitiveType_LINE = 2,
    aiPrimitiveType_TRIANGLE = 4,
    aiPrimitiveType_POLYGON = 8,
    _aiPrimitiveType_Force32Bit = 2147483647,
)
@cenum(aiMorphingMethod,
    aiMorphingMethod_VERTEX_BLEND = 1,
    aiMorphingMethod_MORPH_NORMALIZED = 2,
    aiMorphingMethod_MORPH_RELATIVE = 3,
    _aiMorphingMethod_Force32Bit = 2147483647,
)
@cenum(aiMetadataType,
    AI_BOOL = 0,
    AI_INT32 = 1,
    AI_UINT64 = 2,
    AI_FLOAT = 3,
    AI_DOUBLE = 4,
    AI_AISTRING = 5,
    AI_AIVECTOR3D = 6,
    FORCE_32BIT = 7,
)

struct aiMetadataEntry
    mType::aiMetadataType
    mData::Ptr{Cvoid}
end

@cenum(aiPostProcessSteps,
    aiProcess_CalcTangentSpace = 1,
    aiProcess_JoinIdenticalVertices = 2,
    aiProcess_MakeLeftHanded = 4,
    aiProcess_Triangulate = 8,
    aiProcess_RemoveComponent = 16,
    aiProcess_GenNormals = 32,
    aiProcess_GenSmoothNormals = 64,
    aiProcess_SplitLargeMeshes = 128,
    aiProcess_PreTransformVertices = 256,
    aiProcess_LimitBoneWeights = 512,
    aiProcess_ValidateDataStructure = 1024,
    aiProcess_ImproveCacheLocality = 2048,
    aiProcess_RemoveRedundantMaterials = 4096,
    aiProcess_FixInfacingNormals = 8192,
    aiProcess_SortByPType = 32768,
    aiProcess_FindDegenerates = 65536,
    aiProcess_FindInvalidData = 131072,
    aiProcess_GenUVCoords = 262144,
    aiProcess_TransformUVCoords = 524288,
    aiProcess_FindInstances = 1048576,
    aiProcess_OptimizeMeshes = 2097152,
    aiProcess_OptimizeGraph = 4194304,
    aiProcess_FlipUVs = 8388608,
    aiProcess_FlipWindingOrder = 16777216,
    aiProcess_SplitByBoneCount = 33554432,
    aiProcess_Debone = 67108864,
    aiProcess_GlobalScale = 134217728,
)

const aiProcess_ConvertToLeftHanded = ((aiProcess_MakeLeftHanded | aiProcess_FlipUVs) | aiProcess_FlipWindingOrder) | UInt32(0)
const aiProcessPreset_TargetRealtime_Fast = (((((aiProcess_CalcTangentSpace | aiProcess_GenNormals) | aiProcess_JoinIdenticalVertices) | aiProcess_Triangulate) | aiProcess_GenUVCoords) | aiProcess_SortByPType) | UInt32(0)
const aiProcessPreset_TargetRealtime_Quality = (((((((((((aiProcess_CalcTangentSpace | aiProcess_GenSmoothNormals) | aiProcess_JoinIdenticalVertices) | aiProcess_ImproveCacheLocality) | aiProcess_LimitBoneWeights) | aiProcess_RemoveRedundantMaterials) | aiProcess_SplitLargeMeshes) | aiProcess_Triangulate) | aiProcess_GenUVCoords) | aiProcess_SortByPType) | aiProcess_FindDegenerates) | aiProcess_FindInvalidData) | UInt32(0)
const aiProcessPreset_TargetRealtime_MaxQuality = (((aiProcessPreset_TargetRealtime_Quality | aiProcess_FindInstances) | aiProcess_ValidateDataStructure) | aiProcess_OptimizeMeshes) | UInt32(0)
const AI_SCENE_FLAGS_INCOMPLETE = 0x01
const AI_SCENE_FLAGS_VALIDATED = 0x02
const AI_SCENE_FLAGS_VALIDATION_WARNING = 0x04
const AI_SCENE_FLAGS_NON_VERBOSE_FORMAT = 0x08
const AI_SCENE_FLAGS_TERRAIN = 0x10
const AI_SCENE_FLAGS_ALLOW_SHARED = 0x20
const AI_EMBEDDED_TEXNAME_PREFIX = "*"

# Skipping MacroDefinition: AI_MAKE_EMBEDDED_TEXNAME ( _n_ ) AI_EMBEDDED_TEXNAME_PREFIX # _n_

const MAXLEN = 1024

@cenum(aiReturn{Int32},
    aiReturn_SUCCESS = 0,
    aiReturn_FAILURE = -1,
    aiReturn_OUTOFMEMORY = -3,
    _AI_ENFORCE_ENUM_SIZE = 2147483647,
)

const AI_SUCCESS = aiReturn_SUCCESS
const AI_FAILURE = aiReturn_FAILURE
const AI_OUTOFMEMORY = aiReturn_OUTOFMEMORY

@cenum(aiDefaultLogStream,
    aiDefaultLogStream_FILE = 1,
    aiDefaultLogStream_STDOUT = 2,
    aiDefaultLogStream_STDERR = 4,
    aiDefaultLogStream_DEBUGGER = 8,
    _AI_DLS_ENFORCE_ENUM_SIZE = 2147483647,
)

const DLS_FILE = aiDefaultLogStream_FILE
const DLS_STDOUT = aiDefaultLogStream_STDOUT
const DLS_STDERR = aiDefaultLogStream_STDERR
const DLS_DEBUGGER = aiDefaultLogStream_DEBUGGER

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

@cenum(aiOrigin,
    aiOrigin_SET = 0,
    aiOrigin_CUR = 1,
    aiOrigin_END = 2,
    _AI_ORIGIN_ENFORCE_ENUM_SIZE = 2147483647,
)

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

const ASSIMP_CFLAGS_SHARED = 0x01
const ASSIMP_CFLAGS_STLPORT = 0x02
const ASSIMP_CFLAGS_DEBUG = 0x04
const ASSIMP_CFLAGS_NOBOOST = 0x08
const ASSIMP_CFLAGS_SINGLETHREADED = 0x10
const PRINTF_INT64_MODIFIER = "ll"
const PRINTF_INT32_MODIFIER = ""
const PRINTF_INT16_MODIFIER = "h"
const PRINTF_INTMAX_MODIFIER = PRINTF_INT64_MODIFIER
const PRINTF_INT64_HEX_WIDTH = "16"
const PRINTF_UINT64_HEX_WIDTH = "16"
const PRINTF_INT32_HEX_WIDTH = "8"
const PRINTF_UINT32_HEX_WIDTH = "8"
const PRINTF_INT16_HEX_WIDTH = "4"
const PRINTF_UINT16_HEX_WIDTH = "4"
const PRINTF_INT8_HEX_WIDTH = "2"
const PRINTF_UINT8_HEX_WIDTH = "2"
const PRINTF_INT64_DEC_WIDTH = "19"
const PRINTF_UINT64_DEC_WIDTH = "20"
const PRINTF_INT32_DEC_WIDTH = "10"
const PRINTF_UINT32_DEC_WIDTH = "10"
const PRINTF_INT16_DEC_WIDTH = "5"
const PRINTF_UINT16_DEC_WIDTH = "5"
const PRINTF_INT8_DEC_WIDTH = "3"
const PRINTF_UINT8_DEC_WIDTH = "3"
const PRINTF_INTMAX_HEX_WIDTH = PRINTF_UINT64_HEX_WIDTH
const PRINTF_UINTMAX_HEX_WIDTH = PRINTF_UINT64_HEX_WIDTH
const PRINTF_INTMAX_DEC_WIDTH = PRINTF_UINT64_DEC_WIDTH
const PRINTF_UINTMAX_DEC_WIDTH = PRINTF_UINT64_DEC_WIDTH

# Skipping MacroDefinition: PACK_STRUCT __attribute__ ( ( __packed__ ) )
