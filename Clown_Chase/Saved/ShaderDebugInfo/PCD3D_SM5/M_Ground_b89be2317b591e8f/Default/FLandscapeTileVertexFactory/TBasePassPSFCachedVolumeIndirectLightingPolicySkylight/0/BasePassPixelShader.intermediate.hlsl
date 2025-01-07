#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float3 _203 = 0.0f.xxx;
static float4 _206 = 0.0f.xxxx;

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
cbuffer Primitive
{
    uint Primitive_Primitive_Flags : packoffset(c0);
    float Primitive_Primitive_ObjectBoundsX : packoffset(c22.w);
    float4 Primitive_Primitive_ObjectWorldPositionHighAndRadius : packoffset(c23);
    float3 Primitive_Primitive_ObjectWorldPositionLow : packoffset(c24);
    float Primitive_Primitive_ObjectBoundsY : packoffset(c31.w);
    float Primitive_Primitive_ObjectBoundsZ : packoffset(c32.w);
    float Primitive_Primitive_MaxWPOExtent : packoffset(c37.z);
};

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
    float2 _249 = mad(float2(LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw).zw), 2.0f.xx, (-1.0f).xx);
    float _253 = sqrt(max(1.0f - dot(_249, _249), 0.0f));
    float _254 = _249.x;
    float3 _256 = float3(_254, _249.y, _253);
    float3 _259 = normalize(float3(_253, 0.0f, -_254));
    float4 _276 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _280 = _276.xyz / _276.w.xxx;
    float3 _281 = _280 - View_View_RelativePreViewTranslationTO;
    precise float3 _75 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _281);
    precise float3 _78 = _281 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _75);
    float4 _285 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float3 _305 = dot(_285, Material_Material_PreshaderBuffer[0]).xxx;
    float3 _311 = dot(_285, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _319 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _328 = dot(_285, Material_Material_PreshaderBuffer[2]).xxx;
    float2 _335 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _344 = dot(_285, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _353 = normalize(mul(normalize((mad(float4(_335, sqrt(clamp(1.0f - dot(_335, _335), 0.0f, 1.0f)), 1.0f).xyz, _344, mad(float4(_319, sqrt(clamp(1.0f - dot(_319, _319), 0.0f, 1.0f)), 1.0f).xyz, _328, mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz, _305, Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * _311))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_259, cross(_256, _259), _256), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _364 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _369 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _376 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _382 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _388 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _393 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _400 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _406 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float3 _410 = clamp(mad(_382.xyz, _344, mad(_376.xyz, _328, mad(_364.xyz, _305, _369.xyz * _311))), 0.0f.xxx, 1.0f.xxx);
    float _414 = mad(clamp(mad(_406.xyz, _344, mad(_400.xyz, _328, mad(_388.xyz, _305, _393.xyz * _311))).x, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _456 = 0.0f;
    float _457 = 0.0f;
    float _458 = 0.0f;
    float3 _459 = 0.0f.xxx;
    float3 _460 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _429 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _433 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _429, 0.0f);
        float4 _436 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _429, 0.0f);
        float4 _439 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _429, 0.0f);
        _456 = mad(_414, _439.w, _439.z);
        _457 = _439.y;
        _458 = _439.x;
        _459 = (_410 * _433.w) + _433.xyz;
        _460 = normalize((_353 * _436.w) + ((_436.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _456 = _414;
        _457 = 0.0f;
        _458 = 0.0f;
        _459 = _410;
        _460 = _353;
    }
    bool _473 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _479 = 0.0f;
    if (((Primitive_Primitive_Flags & 2u) != 0u) && _473)
    {
        _479 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _479 = 1.0f;
    }
    float _526 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        float3 _494 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _281, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _505 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_494.x), int(_494.y), int(_494.z), 0).xyz, 0)));
        _526 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_505.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_494 / _505.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _526 = _479;
    }
    float3 _539 = ((_459 - (_459 * _458)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _546 = (lerp((0.07999999821186065673828125f * _457).xxx, _459, _458.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _549 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _554 = 0.0f.xxx;
    if (_549)
    {
        _554 = _539 + (_546 * 0.449999988079071044921875f);
    }
    else
    {
        _554 = _539;
    }
    bool3 _555 = _549.xxx;
    float3 _556 = float3(_555.x ? 0.0f.xxx.x : _546.x, _555.y ? 0.0f.xxx.y : _546.y, _555.z ? 0.0f.xxx.z : _546.z);
    float3 _558 = dot(_556, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _633 = 0.0f.xxx;
    if (_473)
    {
        float3 _585 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _281, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _589 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _585);
        float4 _593 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _585);
        float4 _596 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _585);
        float4 _614 = 0.0f.xxxx;
        _614.y = (-0.48860299587249755859375f) * _460.y;
        _614.z = 0.48860299587249755859375f * _460.z;
        _614.w = (-0.48860299587249755859375f) * _460.x;
        _614.x = 0.886227548122406005859375f;
        float3 _623 = _614.yzw * 2.094395160675048828125f;
        float4 _624 = float4(_614.x, _623.x, _623.y, _623.z);
        float3 _626 = 0.0f.xxx;
        _626.x = dot(float4(_589.x, _593.x, _596.x, _589.w), _624);
        _626.y = dot(float4(_589.y, _593.y, _596.y, _593.w), _624);
        _626.z = dot(float4(_589.z, _593.z, _596.zw), _624);
        _633 = max(0.0f.xxx, _626) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _633 = 0.0f.xxx;
    }
    float3 _711 = 0.0f.xxx;
    if (OpaqueBasePass_OpaqueBasePass_Shared_UseBasePassSkylight > 0u)
    {
        float _663 = 0.0f;
        float _664 = 0.0f;
        float3 _665 = 0.0f.xxx;
        [branch]
        if (View_View_SkyLightApplyPrecomputedBentNormalShadowingFlag != 0.0f)
        {
            float3 _653 = 0.0f.xxx;
            float _654 = 0.0f;
            if (_473)
            {
                _653 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.xyz;
                _654 = IndirectLightingCache_IndirectLightingCache_PointSkyBentNormal.w;
            }
            else
            {
                _653 = _460;
                _654 = 1.0f;
            }
            float _657 = mad(_654 - 1.0f, 1.0f - _654, 1.0f);
            _663 = lerp(clamp(dot(_653, _460), 0.0f, 1.0f), 1.0f, _657);
            _664 = _654;
            _665 = lerp(_653, _460, _657.xxx);
        }
        else
        {
            _663 = 1.0f;
            _664 = 1.0f;
            _665 = _460;
        }
        float4 _669 = float4(_665, 1.0f);
        float3 _673 = 0.0f.xxx;
        _673.x = dot(View_SkyIrradianceEnvironmentMap[0u], _669);
        _673.y = dot(View_SkyIrradianceEnvironmentMap[1u], _669);
        _673.z = dot(View_SkyIrradianceEnvironmentMap[2u], _669);
        float4 _684 = _669.xyzz * _669.yzzx;
        float3 _688 = 0.0f.xxx;
        _688.x = dot(View_SkyIrradianceEnvironmentMap[3u], _684);
        _688.y = dot(View_SkyIrradianceEnvironmentMap[4u], _684);
        _688.z = dot(View_SkyIrradianceEnvironmentMap[5u], _684);
        _711 = (max(0.0f.xxx, (_673 + _688) + (View_SkyIrradianceEnvironmentMap[6u].xyz * mad(_665.x, _665.x, -(_665.y * _665.y)))) * View_View_SkyLightColor.xyz) * (_664 * _663);
    }
    else
    {
        _711 = 0.0f.xxx;
    }
    float3 _712 = mad(_633, View_View_PrecomputedIndirectLightingColorScale, _711);
    float3 _733 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _791 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _79 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _80 = _79 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _81 = _80 - _79;
        precise float3 _82 = Primitive_Primitive_ObjectWorldPositionLow - _81;
        precise float3 _83 = _75 - _80;
        precise float3 _84 = _78 - _82;
        precise float3 _85 = _83 + _84;
        float3 _753 = abs(_85);
        float3 _754 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _790 = 0.0f.xxx;
        if (any(bool3(_753.x > _754.x, _753.y > _754.y, _753.z > _754.z)))
        {
            float3 _786 = frac(dot(frac(frac(_75 * 1.52587890625e-05f.xxx) + frac(_78 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _790 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_786.x > 0.5f.xxx.x, _786.y > 0.5f.xxx.y, _786.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _776 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _764 = abs(_280 - in_var_TEXCOORD9);
                _776 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_764.x, max(_764.y, _764.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _776 = _733;
            }
            _790 = _776;
        }
        _791 = _790;
    }
    else
    {
        _791 = _733;
    }
    float4 _798 = float4((mad(_712 * _554, max(1.0f.xxx, ((((((_459 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_459 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_459 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _554 + (_556 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _791) * 1.0f, 0.0f);
    float4 _809 = 0.0f.xxxx;
    if ((View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f) && (View_View_bSubsurfacePostprocessEnabled != 0.0f))
    {
        float4 _808 = _798;
        _808.w = 0.0f;
        _809 = _808;
    }
    else
    {
        _809 = _798;
    }
    float2 _814 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _829 = (_460 * 0.5f) + 0.5f.xxx;
    float4 _831 = 0.0f.xxxx;
    _831.x = _829.x;
    _831.y = _829.y;
    _831.z = _829.z;
    _831.w = mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _838 = 0.0f.xxxx;
    _838.x = _459.x;
    _838.y = _459.y;
    _838.z = _459.z;
    _838.w = mad(frac(dot(_814.xyx * _814.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_712, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_558 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_558 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_558 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _844 = 0.0f.xxxx;
    _844.x = _526;
    _844.y = 1.0f;
    _844.z = 1.0f;
    _844.w = 1.0f;
    float4 _849 = _809 * View_View_PreExposure;
    float3 _851 = min(_849.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_851.x, _851.y, _851.z, _849.w);
    out_var_SV_Target1 = _831;
    out_var_SV_Target2 = float4(_458, _457, _456, 0.50588238239288330078125f);
    out_var_SV_Target3 = _838;
    out_var_SV_Target5 = _844;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    in_var_TEXCOORD0 = stage_input.in_var_TEXCOORD0;
    in_var_TEXCOORD1 = stage_input.in_var_TEXCOORD1;
    in_var_TEXCOORD2 = stage_input.in_var_TEXCOORD2;
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
