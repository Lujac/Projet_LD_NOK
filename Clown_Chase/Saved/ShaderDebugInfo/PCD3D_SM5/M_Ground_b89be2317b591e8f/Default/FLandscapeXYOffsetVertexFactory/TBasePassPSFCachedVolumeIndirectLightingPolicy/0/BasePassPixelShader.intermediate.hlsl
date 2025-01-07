#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _205 = 0.0f.xxxx;

cbuffer View
{
    row_major float4x4 View_View_SVPositionToTranslatedWorld : packoffset(c44);
    float3 View_View_ViewTilePosition : packoffset(c109);
    float3 View_View_RelativePreViewTranslationTO : packoffset(c112);
    float4 View_View_BufferSizeAndInvSize : packoffset(c139);
    float View_View_PreExposure : packoffset(c143.z);
    float4 View_View_DiffuseOverrideParameter : packoffset(c144);
    float4 View_View_SpecularOverrideParameter : packoffset(c145);
    float4 View_View_NormalOverrideParameter : packoffset(c146);
    float2 View_View_RoughnessOverrideParameter : packoffset(c147);
    float View_View_OutOfBoundsMask : packoffset(c148);
    float View_View_MaterialTextureMipBias : packoffset(c151);
    float View_View_UnlitViewmodeMask : packoffset(c153.z);
    float3 View_View_PrecomputedIndirectLightingColorScale : packoffset(c166);
    float View_View_RenderingReflectionCaptureMask : packoffset(c190.w);
    float View_View_ShowDecalsMask : packoffset(c204.w);
    float View_View_bCheckerboardSubsurfaceProfileRendering : packoffset(c236.z);
    float3 View_View_VolumetricLightmapWorldToUVScale : packoffset(c243);
    float3 View_View_VolumetricLightmapWorldToUVAdd : packoffset(c244);
    float3 View_View_VolumetricLightmapIndirectionTextureSize : packoffset(c245);
    float View_View_VolumetricLightmapBrickSize : packoffset(c245.w);
    float3 View_View_VolumetricLightmapBrickTexelSize : packoffset(c246);
    float View_View_IndirectLightingCacheShowFlag : packoffset(c246.w);
    float View_View_bSubsurfacePostprocessEnabled : packoffset(c257.w);
};

StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
    float IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing : packoffset(c5);
};

cbuffer LandscapeParameters
{
    row_major float4x4 LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling : packoffset(c9);
};

cbuffer Material
{
    float4 Material_Material_PreshaderBuffer[5] : packoffset(c0);
};

Texture3D<uint4> View_VolumetricLightmapIndirectionTexture;
Texture3D<float4> View_DirectionalLightShadowingBrickTexture;
SamplerState View_SharedBilinearClampedSampler;
SamplerState View_LandscapeWeightmapSampler;
Texture2D<float4> OpaqueBasePass_DBufferATexture;
Texture2D<float4> OpaqueBasePass_DBufferBTexture;
Texture2D<float4> OpaqueBasePass_DBufferCTexture;
SamplerState OpaqueBasePass_DBufferATextureSampler;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture0;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture1;
Texture3D<float4> IndirectLightingCache_IndirectLightingCacheTexture2;
SamplerState IndirectLightingCache_IndirectLightingCacheTextureSampler0;
Texture2D<float4> LandscapeParameters_NormalmapTexture;
SamplerState LandscapeParameters_NormalmapTextureSampler;
Texture2D<float4> Material_Texture2D_0;
Texture2D<float4> Material_Texture2D_1;
SamplerState Material_Texture2D_1Sampler;
Texture2D<float4> Material_Texture2D_2;
SamplerState Material_Texture2D_2Sampler;
Texture2D<float4> Material_Texture2D_3;
SamplerState Material_Texture2D_3Sampler;
Texture2D<float4> Material_Texture2D_4;
SamplerState Material_Texture2D_4Sampler;
Texture2D<float4> Material_Texture2D_5;
SamplerState Material_Texture2D_5Sampler;
Texture2D<float4> Material_Texture2D_6;
SamplerState Material_Texture2D_6Sampler;
Texture2D<float4> Material_Texture2D_7;
SamplerState Material_Texture2D_7Sampler;
Texture2D<float4> Material_Texture2D_8;
SamplerState Material_Texture2D_8Sampler;
Texture2D<float4> Material_Texture2D_9;
SamplerState Material_Texture2D_9Sampler;
Texture2D<float4> Material_Texture2D_10;
SamplerState Material_Texture2D_10Sampler;
Texture2D<float4> Material_Texture2D_11;
SamplerState Material_Texture2D_11Sampler;
Texture2D<float4> Material_Texture2D_12;
SamplerState Material_Texture2D_12Sampler;

static float4 gl_FragCoord;
static float2 in_var_TEXCOORD0;
static float4 in_var_TEXCOORD1;
static float4 in_var_TEXCOORD2;
static uint in_var_PRIMITIVE_ID;
static float3 in_var_TEXCOORD9;
static float4 out_var_SV_Target0;
static float4 out_var_SV_Target1;
static float4 out_var_SV_Target2;
static float4 out_var_SV_Target3;
static float4 out_var_SV_Target5;

struct SPIRV_Cross_Input
{
    float2 in_var_TEXCOORD0 : TEXCOORD0;
    float4 in_var_TEXCOORD1 : TEXCOORD1;
    float4 in_var_TEXCOORD2 : TEXCOORD2;
    nointerpolation uint in_var_PRIMITIVE_ID : PRIMITIVE_ID;
    float3 in_var_TEXCOORD9 : TEXCOORD9;
    float4 gl_FragCoord : SV_Position;
};

struct SPIRV_Cross_Output
{
    float4 out_var_SV_Target0 : SV_Target0;
    float4 out_var_SV_Target1 : SV_Target1;
    float4 out_var_SV_Target2 : SV_Target2;
    float4 out_var_SV_Target3 : SV_Target3;
    float4 out_var_SV_Target5 : SV_Target5;
};

void frag_main()
{
    float2 _244 = mad(float2(LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw).zw), 2.0f.xx, (-1.0f).xx);
    float _248 = sqrt(max(1.0f - dot(_244, _244), 0.0f));
    float _249 = _244.x;
    float3 _251 = float3(_249, _244.y, _248);
    float3 _254 = normalize(float3(_248, 0.0f, -_249));
    float4 _271 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _275 = _271.xyz / _271.w.xxx;
    float3 _276 = _275 - View_View_RelativePreViewTranslationTO;
    precise float3 _72 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _276);
    precise float3 _75 = _276 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _72);
    float4 _280 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float3 _300 = dot(_280, Material_Material_PreshaderBuffer[0]).xxx;
    float3 _306 = dot(_280, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _314 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _323 = dot(_280, Material_Material_PreshaderBuffer[2]).xxx;
    float2 _330 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _339 = dot(_280, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _348 = normalize(mul(normalize((mad(float4(_330, sqrt(clamp(1.0f - dot(_330, _330), 0.0f, 1.0f)), 1.0f).xyz, _339, mad(float4(_314, sqrt(clamp(1.0f - dot(_314, _314), 0.0f, 1.0f)), 1.0f).xyz, _323, mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz, _300, Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * _306))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_254, cross(_251, _254), _251), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _359 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _364 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _371 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _377 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _383 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _388 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _395 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _401 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float3 _405 = clamp(mad(_377.xyz, _339, mad(_371.xyz, _323, mad(_359.xyz, _300, _364.xyz * _306))), 0.0f.xxx, 1.0f.xxx);
    float _409 = mad(clamp(mad(_401.xyz, _339, mad(_395.xyz, _323, mad(_383.xyz, _300, _388.xyz * _306))).x, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    uint _410 = in_var_PRIMITIVE_ID * 42u;
    float _454 = 0.0f;
    float _455 = 0.0f;
    float _456 = 0.0f;
    float3 _457 = 0.0f.xxx;
    float3 _458 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_410].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _427 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _431 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _427, 0.0f);
        float4 _434 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _427, 0.0f);
        float4 _437 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _427, 0.0f);
        _454 = mad(_409, _437.w, _437.z);
        _455 = _437.y;
        _456 = _437.x;
        _457 = (_405 * _431.w) + _431.xyz;
        _458 = normalize((_348 * _434.w) + ((_434.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _454 = _409;
        _455 = 0.0f;
        _456 = 0.0f;
        _457 = _405;
        _458 = _348;
    }
    uint _461 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_410].x);
    bool _477 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _483 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_410].x) & 2u) != 0u) && _477)
    {
        _483 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _483 = 1.0f;
    }
    float _533 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_410].x) & 4u) != 0u)
    {
        float3 _501 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _276, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _512 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_501.x), int(_501.y), int(_501.z), 0).xyz, 0)));
        _533 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_512.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_501 / _512.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _533 = _483;
    }
    float3 _546 = ((_457 - (_457 * _456)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _553 = (lerp((0.07999999821186065673828125f * _455).xxx, _457, _456.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _556 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _561 = 0.0f.xxx;
    if (_556)
    {
        _561 = _546 + (_553 * 0.449999988079071044921875f);
    }
    else
    {
        _561 = _546;
    }
    bool3 _562 = _556.xxx;
    float3 _563 = float3(_562.x ? 0.0f.xxx.x : _553.x, _562.y ? 0.0f.xxx.y : _553.y, _562.z ? 0.0f.xxx.z : _553.z);
    float3 _565 = dot(_563, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _640 = 0.0f.xxx;
    if (_477)
    {
        float3 _592 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _276, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _596 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _592);
        float4 _600 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _592);
        float4 _603 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _592);
        float4 _621 = 0.0f.xxxx;
        _621.y = (-0.48860299587249755859375f) * _458.y;
        _621.z = 0.48860299587249755859375f * _458.z;
        _621.w = (-0.48860299587249755859375f) * _458.x;
        _621.x = 0.886227548122406005859375f;
        float3 _630 = _621.yzw * 2.094395160675048828125f;
        float4 _631 = float4(_621.x, _630.x, _630.y, _630.z);
        float3 _633 = 0.0f.xxx;
        _633.x = dot(float4(_596.x, _600.x, _603.x, _596.w), _631);
        _633.y = dot(float4(_596.y, _600.y, _603.y, _600.w), _631);
        _633.z = dot(float4(_596.z, _600.z, _603.zw), _631);
        _640 = max(0.0f.xxx, _633) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _640 = 0.0f.xxx;
    }
    float3 _643 = _640 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _664 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _733 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _76 = Scene_GPUScene_GPUScenePrimitiveSceneData[_410 + 18u].xyz * 2097152.0f;
        precise float3 _77 = _76 + Scene_GPUScene_GPUScenePrimitiveSceneData[_410 + 19u].xyz;
        precise float3 _78 = _77 - _76;
        precise float3 _79 = Scene_GPUScene_GPUScenePrimitiveSceneData[_410 + 19u].xyz - _78;
        uint _690 = _410 + 32u;
        precise float3 _80 = _72 - _77;
        precise float3 _81 = _75 - _79;
        precise float3 _82 = _80 + _81;
        float3 _695 = abs(_82);
        float3 _696 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_410 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_410 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_410 + 27u].w) + 1.0f.xxx;
        float3 _732 = 0.0f.xxx;
        if (any(bool3(_695.x > _696.x, _695.y > _696.y, _695.z > _696.z)))
        {
            float3 _728 = frac(dot(frac(frac(_72 * 1.52587890625e-05f.xxx) + frac(_75 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _732 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_728.x > 0.5f.xxx.x, _728.y > 0.5f.xxx.y, _728.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _718 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_690].x > 0.0f)
            {
                float3 _706 = abs(_275 - in_var_TEXCOORD9);
                _718 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_706.x, max(_706.y, _706.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_690].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _718 = _664;
            }
            _732 = _718;
        }
        _733 = _732;
    }
    else
    {
        _733 = _664;
    }
    float4 _740 = float4((mad(_643 * _561, max(1.0f.xxx, ((((((_457 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_457 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_457 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _561 + (_563 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _733) * 1.0f, 0.0f);
    float4 _751 = 0.0f.xxxx;
    if ((View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f) && (View_View_bSubsurfacePostprocessEnabled != 0.0f))
    {
        float4 _750 = _740;
        _750.w = 0.0f;
        _751 = _750;
    }
    else
    {
        _751 = _740;
    }
    float2 _756 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _771 = (_458 * 0.5f) + 0.5f.xxx;
    float4 _773 = 0.0f.xxxx;
    _773.x = _771.x;
    _773.y = _771.y;
    _773.z = _771.z;
    _773.w = mad(2.0f, float((_461 & 256u) != 0u), float((_461 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _780 = 0.0f.xxxx;
    _780.x = _457.x;
    _780.y = _457.y;
    _780.z = _457.z;
    _780.w = mad(frac(dot(_756.xyx * _756.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_643, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_565 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_565 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_565 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _786 = 0.0f.xxxx;
    _786.x = _533;
    _786.y = 1.0f;
    _786.z = 1.0f;
    _786.w = 1.0f;
    float4 _791 = _751 * View_View_PreExposure;
    float3 _793 = min(_791.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_793.x, _793.y, _793.z, _791.w);
    out_var_SV_Target1 = _773;
    out_var_SV_Target2 = float4(_456, _455, _454, 0.50588238239288330078125f);
    out_var_SV_Target3 = _780;
    out_var_SV_Target5 = _786;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_TEXCOORD2 = stage_input.in_var_TEXCOORD2;
    in_var_PRIMITIVE_ID = stage_input.in_var_PRIMITIVE_ID;
    in_var_TEXCOORD9 = stage_input.in_var_TEXCOORD9;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.out_var_SV_Target0 = out_var_SV_Target0;
    stage_output.out_var_SV_Target1 = out_var_SV_Target1;
    stage_output.out_var_SV_Target2 = out_var_SV_Target2;
    stage_output.out_var_SV_Target3 = out_var_SV_Target3;
    stage_output.out_var_SV_Target5 = out_var_SV_Target5;
    return stage_output;
}
