#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _209 = 0.0f.xxx;
static float4 _212 = 0.0f.xxxx;

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
    float View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag : packoffset(c193.y);
    float4 View_View_SkyLightColor : packoffset(c194);
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

StructuredBuffer<float4> View_SkyIrradianceEnvironmentMap;
StructuredBuffer<float4> Scene_GPUScene_GPUScenePrimitiveSceneData;
cbuffer OpaqueBasePass
{
    uint OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight : packoffset(c151);
};

cbuffer IndirectLightingCache
{
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd : packoffset(c0);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale : packoffset(c1);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV : packoffset(c2);
    float3 IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV : packoffset(c3);
    float4 IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal : packoffset(c4);
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
    float2 _254 = mad(float2(LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw).zw), 2.0f.xx, (-1.0f).xx);
    float _258 = sqrt(max(1.0f - dot(_254, _254), 0.0f));
    float _259 = _254.x;
    float3 _261 = float3(_259, _254.y, _258);
    float3 _264 = normalize(float3(_258, 0.0f, -_259));
    float4 _281 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _285 = _281.xyz / _281.w.xxx;
    float3 _286 = _285 - View_View_RelativePreViewTranslationTO;
    precise float3 _75 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _286);
    precise float3 _78 = _286 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _75);
    float4 _290 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float3 _310 = dot(_290, Material_Material_PreshaderBuffer[0]).xxx;
    float3 _316 = dot(_290, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _324 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _333 = dot(_290, Material_Material_PreshaderBuffer[2]).xxx;
    float2 _340 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _349 = dot(_290, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _358 = normalize(mul(normalize((mad(float4(_340, sqrt(clamp(1.0f - dot(_340, _340), 0.0f, 1.0f)), 1.0f).xyz, _349, mad(float4(_324, sqrt(clamp(1.0f - dot(_324, _324), 0.0f, 1.0f)), 1.0f).xyz, _333, mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz, _310, Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * _316))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_264, cross(_261, _264), _261), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _369 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _374 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _381 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _387 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _393 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _398 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _405 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _411 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float3 _415 = clamp(mad(_387.xyz, _349, mad(_381.xyz, _333, mad(_369.xyz, _310, _374.xyz * _316))), 0.0f.xxx, 1.0f.xxx);
    float _419 = mad(clamp(mad(_411.xyz, _349, mad(_405.xyz, _333, mad(_393.xyz, _310, _398.xyz * _316))).x, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    uint _420 = in_var_PRIMITIVE_ID * 42u;
    float _464 = 0.0f;
    float _465 = 0.0f;
    float _466 = 0.0f;
    float3 _467 = 0.0f.xxx;
    float3 _468 = 0.0f.xxx;
    [flatten]
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_420].x) & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _437 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _441 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _437, 0.0f);
        float4 _444 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _437, 0.0f);
        float4 _447 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _437, 0.0f);
        _464 = mad(_419, _447.w, _447.z);
        _465 = _447.y;
        _466 = _447.x;
        _467 = (_415 * _441.w) + _441.xyz;
        _468 = normalize((_358 * _444.w) + ((_444.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _464 = _419;
        _465 = 0.0f;
        _466 = 0.0f;
        _467 = _415;
        _468 = _358;
    }
    uint _471 = asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_420].x);
    bool _487 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _493 = 0.0f;
    if (((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_420].x) & 2u) != 0u) && _487)
    {
        _493 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _493 = 1.0f;
    }
    float _543 = 0.0f;
    [branch]
    if ((asuint(Scene_GPUScene_GPUScenePrimitiveSceneData[_420].x) & 4u) != 0u)
    {
        float3 _511 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _286, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _522 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_511.x), int(_511.y), int(_511.z), 0).xyz, 0)));
        _543 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_522.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_511 / _522.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _543 = _493;
    }
    float3 _556 = ((_467 - (_467 * _466)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _563 = (lerp((0.07999999821186065673828125f * _465).xxx, _467, _466.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _566 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _571 = 0.0f.xxx;
    if (_566)
    {
        _571 = _556 + (_563 * 0.449999988079071044921875f);
    }
    else
    {
        _571 = _556;
    }
    bool3 _572 = _566.xxx;
    float3 _573 = float3(_572.x ? 0.0f.xxx.x : _563.x, _572.y ? 0.0f.xxx.y : _563.y, _572.z ? 0.0f.xxx.z : _563.z);
    float3 _575 = dot(_573, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _650 = 0.0f.xxx;
    if (_487)
    {
        float3 _602 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _286, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _606 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _602);
        float4 _610 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _602);
        float4 _613 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _602);
        float4 _631 = 0.0f.xxxx;
        _631.y = (-0.48860299587249755859375f) * _468.y;
        _631.z = 0.48860299587249755859375f * _468.z;
        _631.w = (-0.48860299587249755859375f) * _468.x;
        _631.x = 0.886227548122406005859375f;
        float3 _640 = _631.yzw * 2.094395160675048828125f;
        float4 _641 = float4(_631.x, _640.x, _640.y, _640.z);
        float3 _643 = 0.0f.xxx;
        _643.x = dot(float4(_606.x, _610.x, _613.x, _606.w), _641);
        _643.y = dot(float4(_606.y, _610.y, _613.y, _610.w), _641);
        _643.z = dot(float4(_606.z, _610.z, _613.zw), _641);
        _650 = max(0.0f.xxx, _643) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _650 = 0.0f.xxx;
    }
    float3 _728 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _680 = 0.0f;
        float _681 = 0.0f;
        float3 _682 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _670 = 0.0f.xxx;
            float _671 = 0.0f;
            if (_487)
            {
                _670 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _671 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _670 = _468;
                _671 = 1.0f;
            }
            float _674 = mad(_671 - 1.0f, 1.0f - _671, 1.0f);
            _680 = lerp(clamp(dot(_670, _468), 0.0f, 1.0f), 1.0f, _674);
            _681 = _671;
            _682 = lerp(_670, _468, _674.xxx);
        }
        else
        {
            _680 = 1.0f;
            _681 = 1.0f;
            _682 = _468;
        }
        float4 _686 = float4(_682, 1.0f);
        float3 _690 = 0.0f.xxx;
        _690.x = dot(View_SkyIrradianceEnvironmentMap[0u], _686);
        _690.y = dot(View_SkyIrradianceEnvironmentMap[1u], _686);
        _690.z = dot(View_SkyIrradianceEnvironmentMap[2u], _686);
        float4 _701 = _686.xyzz * _686.yzzx;
        float3 _705 = 0.0f.xxx;
        _705.x = dot(View_SkyIrradianceEnvironmentMap[3u], _701);
        _705.y = dot(View_SkyIrradianceEnvironmentMap[4u], _701);
        _705.z = dot(View_SkyIrradianceEnvironmentMap[5u], _701);
        _728 = (max(0.0f.xxx, (_690 + _705) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_682.x, _682.x, -(_682.y * _682.y)))) * View_View_SkyLightColor.xyz) * (_681 * _680);
    }
    else
    {
        _728 = 0.0f.xxx;
    }
    float3 _729 = mad(_650, View_View_PrecomputedIndirectLightingColorScale, _728);
    float3 _750 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _819 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _79 = Scene_GPUScene_GPUScenePrimitiveSceneData[_420 + 18u].xyz * 2097152.0f;
        precise float3 _80 = _79 + Scene_GPUScene_GPUScenePrimitiveSceneData[_420 + 19u].xyz;
        precise float3 _81 = _80 - _79;
        precise float3 _82 = Scene_GPUScene_GPUScenePrimitiveSceneData[_420 + 19u].xyz - _81;
        uint _776 = _420 + 32u;
        precise float3 _83 = _75 - _80;
        precise float3 _84 = _78 - _82;
        precise float3 _85 = _83 + _84;
        float3 _781 = abs(_85);
        float3 _782 = float3(Scene_GPUScene_GPUScenePrimitiveSceneData[_420 + 17u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_420 + 26u].w, Scene_GPUScene_GPUScenePrimitiveSceneData[_420 + 27u].w) + 1.0f.xxx;
        float3 _818 = 0.0f.xxx;
        if (any(bool3(_781.x > _782.x, _781.y > _782.y, _781.z > _782.z)))
        {
            float3 _814 = frac(dot(frac(frac(_75 * 1.52587890625e-05f.xxx) + frac(_78 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _818 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_814.x > 0.5f.xxx.x, _814.y > 0.5f.xxx.y, _814.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _804 = 0.0f.xxx;
            if (Scene_GPUScene_GPUScenePrimitiveSceneData[_776].x > 0.0f)
            {
                float3 _792 = abs(_285 - in_var_TEXCOORD9);
                _804 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_792.x, max(_792.y, _792.z)) - Scene_GPUScene_GPUScenePrimitiveSceneData[_776].x) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _804 = _750;
            }
            _818 = _804;
        }
        _819 = _818;
    }
    else
    {
        _819 = _750;
    }
    float4 _826 = float4((mad(_729 * _571, max(1.0f.xxx, ((((((_467 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_467 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_467 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _571 + (_573 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _819) * 1.0f, 0.0f);
    float4 _837 = 0.0f.xxxx;
    if ((View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f) && (View_View_bSubsurfacePostprocessEnabled != 0.0f))
    {
        float4 _836 = _826;
        _836.w = 0.0f;
        _837 = _836;
    }
    else
    {
        _837 = _826;
    }
    float2 _842 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _857 = (_468 * 0.5f) + 0.5f.xxx;
    float4 _859 = 0.0f.xxxx;
    _859.x = _857.x;
    _859.y = _857.y;
    _859.z = _857.z;
    _859.w = mad(2.0f, float((_471 & 256u) != 0u), float((_471 & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _866 = 0.0f.xxxx;
    _866.x = _467.x;
    _866.y = _467.y;
    _866.z = _467.z;
    _866.w = mad(frac(dot(_842.xyx * _842.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_729, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_575 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_575 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_575 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _872 = 0.0f.xxxx;
    _872.x = _543;
    _872.y = 1.0f;
    _872.z = 1.0f;
    _872.w = 1.0f;
    float4 _877 = _837 * View_View_PreExposure;
    float3 _879 = min(_877.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_879.x, _879.y, _879.z, _877.w);
    out_var_SV_Target1 = _859;
    out_var_SV_Target2 = float4(_466, _465, _464, 0.50588238239288330078125f);
    out_var_SV_Target3 = _866;
    out_var_SV_Target5 = _872;
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
