#pragma warning(disable : 3571) // pow() intrinsic suggested to be used with abs()
static float4 _197 = 0.0f.xxxx;

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
    float2 _237 = mad(float2(LandscapeParameters_NormalmapTexture.Sample(LandscapeParameters_NormalmapTextureSampler, in_var_TEXCOORD1.zw).zw), 2.0f.xx, (-1.0f).xx);
    float _241 = sqrt(max(1.0f - dot(_237, _237), 0.0f));
    float _242 = _237.x;
    float3 _244 = float3(_242, _237.y, _241);
    float3 _247 = normalize(float3(_241, 0.0f, -_242));
    float4 _264 = mul(float4(gl_FragCoord.xyz, 1.0f), View_View_SVPositionToTranslatedWorld);
    float3 _268 = _264.xyz / _264.w.xxx;
    float3 _269 = _268 - View_View_RelativePreViewTranslationTO;
    precise float3 _70 = mad(View_View_ViewTilePosition, 2097152.0f.xxx, _269);
    precise float3 _73 = _269 - mad(-View_View_ViewTilePosition, 2097152.0f.xxx, _70);
    float4 _273 = Material_Texture2D_0.Sample(View_LandscapeWeightmapSampler, in_var_TEXCOORD1.xy);
    float3 _293 = dot(_273, Material_Material_PreshaderBuffer[0]).xxx;
    float3 _299 = dot(_273, Material_Material_PreshaderBuffer[1]).xxx;
    float2 _307 = mad(Material_Texture2D_3.SampleBias(Material_Texture2D_3Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _316 = dot(_273, Material_Material_PreshaderBuffer[2]).xxx;
    float2 _323 = mad(Material_Texture2D_4.SampleBias(Material_Texture2D_4Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xy, 2.0f.xx, (-1.0f).xx);
    float3 _332 = dot(_273, Material_Material_PreshaderBuffer[3]).xxx;
    float3 _341 = normalize(mul(normalize((mad(float4(_323, sqrt(clamp(1.0f - dot(_323, _323), 0.0f, 1.0f)), 1.0f).xyz, _332, mad(float4(_307, sqrt(clamp(1.0f - dot(_307, _307), 0.0f, 1.0f)), 1.0f).xyz, _316, mad(Material_Texture2D_1.SampleBias(Material_Texture2D_1Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz, _293, Material_Texture2D_2.SampleBias(Material_Texture2D_2Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias).xyz * _299))) * View_View_NormalOverrideParameter.w) + View_View_NormalOverrideParameter.xyz), mul(float3x3(_247, cross(_244, _247), _244), float3x3(LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[0].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[1].xyz, LandscapeParameters_LandscapeParameters_LocalToWorldNoScaling[2].xyz)))) * 1.0f;
    float4 _352 = Material_Texture2D_5.SampleBias(Material_Texture2D_5Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _357 = Material_Texture2D_6.SampleBias(Material_Texture2D_6Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _364 = Material_Texture2D_7.SampleBias(Material_Texture2D_7Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _370 = Material_Texture2D_8.SampleBias(Material_Texture2D_8Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _376 = Material_Texture2D_9.SampleBias(Material_Texture2D_9Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _381 = Material_Texture2D_10.SampleBias(Material_Texture2D_10Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _388 = Material_Texture2D_11.SampleBias(Material_Texture2D_11Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float4 _394 = Material_Texture2D_12.SampleBias(Material_Texture2D_12Sampler, in_var_TEXCOORD0, View_View_MaterialTextureMipBias);
    float3 _398 = clamp(mad(_370.xyz, _332, mad(_364.xyz, _316, mad(_352.xyz, _293, _357.xyz * _299))), 0.0f.xxx, 1.0f.xxx);
    float _402 = mad(clamp(mad(_394.xyz, _332, mad(_388.xyz, _316, mad(_376.xyz, _293, _381.xyz * _299))).x, 0.0f, 1.0f), View_View_RoughnessOverrideParameter.y, View_View_RoughnessOverrideParameter.x);
    float _444 = 0.0f;
    float _445 = 0.0f;
    float _446 = 0.0f;
    float3 _447 = 0.0f.xxx;
    float3 _448 = 0.0f.xxx;
    [flatten]
    if (((Primitive_Primitive_Flags & 8u) != 0u) && (View_View_ShowDecalsMask > 0.0f))
    {
        float2 _417 = gl_FragCoord.xy * View_View_BufferSizeAndInvSize.zw;
        float4 _421 = OpaqueBasePass_DBufferATexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _417, 0.0f);
        float4 _424 = OpaqueBasePass_DBufferBTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _417, 0.0f);
        float4 _427 = OpaqueBasePass_DBufferCTexture.SampleLevel(OpaqueBasePass_DBufferATextureSampler, _417, 0.0f);
        _444 = mad(_402, _427.w, _427.z);
        _445 = _427.y;
        _446 = _427.x;
        _447 = (_398 * _421.w) + _421.xyz;
        _448 = normalize((_341 * _424.w) + ((_424.xyz * 2.0f) - 1.00392162799835205078125f.xxx));
    }
    else
    {
        _444 = _402;
        _445 = 0.0f;
        _446 = 0.0f;
        _447 = _398;
        _448 = _341;
    }
    bool _461 = View_View_IndirectLightingCacheShowFlag > 0.0f;
    float _467 = 0.0f;
    if (((Primitive_Primitive_Flags & 2u) != 0u) && _461)
    {
        _467 = IndirectLightingCache_IndirectLightingCache_DirectionalLightShadowing;
    }
    else
    {
        _467 = 1.0f;
    }
    float _514 = 0.0f;
    [branch]
    if ((Primitive_Primitive_Flags & 4u) != 0u)
    {
        float3 _482 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _269, View_View_VolumetricLightmapWorldToUVScale, View_View_VolumetricLightmapWorldToUVAdd), 0.0f.xxx, 0.9900000095367431640625f.xxx) * View_View_VolumetricLightmapIndirectionTextureSize;
        float4 _493 = float4(View_VolumetricLightmapIndirectionTexture.Load(int4(int4(int(_482.x), int(_482.y), int(_482.z), 0).xyz, 0)));
        _514 = View_DirectionalLightShadowingBrickTexture.SampleLevel(View_SharedBilinearClampedSampler, (((_493.xyz * (View_View_VolumetricLightmapBrickSize + 1.0f)) + (frac(_482 / _493.w.xxx) * View_View_VolumetricLightmapBrickSize)) + 0.5f.xxx) * View_View_VolumetricLightmapBrickTexelSize, 0.0f).x;
    }
    else
    {
        _514 = _467;
    }
    float3 _527 = ((_447 - (_447 * _446)) * View_View_DiffuseOverrideParameter.w) + View_View_DiffuseOverrideParameter.xyz;
    float3 _534 = (lerp((0.07999999821186065673828125f * _445).xxx, _447, _446.xxx) * View_View_SpecularOverrideParameter.w) + View_View_SpecularOverrideParameter.xyz;
    bool _537 = View_View_RenderingReflectionCaptureMask != 0.0f;
    float3 _542 = 0.0f.xxx;
    if (_537)
    {
        _542 = _527 + (_534 * 0.449999988079071044921875f);
    }
    else
    {
        _542 = _527;
    }
    bool3 _543 = _537.xxx;
    float3 _544 = float3(_543.x ? 0.0f.xxx.x : _534.x, _543.y ? 0.0f.xxx.y : _534.y, _543.z ? 0.0f.xxx.z : _534.z);
    float3 _546 = dot(_544, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)).xxx;
    float3 _621 = 0.0f.xxx;
    if (_461)
    {
        float3 _573 = clamp(mad((View_View_ViewTilePosition * 2097152.0f) + _269, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveScale, IndirectLightingCache_IndirectLightingCache_IndirectLightingCachePrimitiveAdd), IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMinUV, IndirectLightingCache_IndirectLightingCache_IndirectLightingCacheMaxUV);
        float4 _577 = IndirectLightingCache_IndirectLightingCacheTexture0.Sample(IndirectLightingCache_IndirectLightingCacheTextureSampler0, _573);
        float4 _581 = IndirectLightingCache_IndirectLightingCacheTexture1.Sample(View_SharedBilinearClampedSampler, _573);
        float4 _584 = IndirectLightingCache_IndirectLightingCacheTexture2.Sample(View_SharedBilinearClampedSampler, _573);
        float4 _602 = 0.0f.xxxx;
        _602.y = (-0.48860299587249755859375f) * _448.y;
        _602.z = 0.48860299587249755859375f * _448.z;
        _602.w = (-0.48860299587249755859375f) * _448.x;
        _602.x = 0.886227548122406005859375f;
        float3 _611 = _602.yzw * 2.094395160675048828125f;
        float4 _612 = float4(_602.x, _611.x, _611.y, _611.z);
        float3 _614 = 0.0f.xxx;
        _614.x = dot(float4(_577.x, _581.x, _584.x, _577.w), _612);
        _614.y = dot(float4(_577.y, _581.y, _584.y, _581.w), _612);
        _614.z = dot(float4(_577.z, _581.z, _584.zw), _612);
        _621 = max(0.0f.xxx, _614) * 0.3183098733425140380859375f.xxx;
    }
    else
    {
        _621 = 0.0f.xxx;
    }
    float3 _624 = _621 * View_View_PrecomputedIndirectLightingColorScale;
    float3 _645 = max(lerp(0.0f.xxx, Material_Material_PreshaderBuffer[4].yzw, Material_Material_PreshaderBuffer[4].x.xxx), 0.0f.xxx);
    float3 _703 = 0.0f.xxx;
    [branch]
    if (View_View_OutOfBoundsMask > 0.0f)
    {
        precise float3 _74 = Primitive_Primitive_ObjectWorldPositionHighAndRadius.xyz * 2097152.0f;
        precise float3 _75 = _74 + Primitive_Primitive_ObjectWorldPositionLow;
        precise float3 _76 = _75 - _74;
        precise float3 _77 = Primitive_Primitive_ObjectWorldPositionLow - _76;
        precise float3 _78 = _70 - _75;
        precise float3 _79 = _73 - _77;
        precise float3 _80 = _78 + _79;
        float3 _665 = abs(_80);
        float3 _666 = float3(Primitive_Primitive_ObjectBoundsX, Primitive_Primitive_ObjectBoundsY, Primitive_Primitive_ObjectBoundsZ) + 1.0f.xxx;
        float3 _702 = 0.0f.xxx;
        if (any(bool3(_665.x > _666.x, _665.y > _666.y, _665.z > _666.z)))
        {
            float3 _698 = frac(dot(frac(frac(_70 * 1.52587890625e-05f.xxx) + frac(_73 * 1.52587890625e-05f.xxx)) * 65536.0f.xxx, 0.001154000055976212024688720703125f.xxx)).xxx;
            _702 = lerp(float3(1.0f, 1.0f, 0.0f), float3(0.0f, 1.0f, 1.0f), float3(bool3(_698.x > 0.5f.xxx.x, _698.y > 0.5f.xxx.y, _698.z > 0.5f.xxx.z)));
        }
        else
        {
            float3 _688 = 0.0f.xxx;
            if (Primitive_Primitive_MaxWPOExtent > 0.0f)
            {
                float3 _676 = abs(_268 - in_var_TEXCOORD9);
                _688 = float3(1.0f, 0.0f, 1.0f) * (1.0f - clamp(abs(max(_676.x, max(_676.y, _676.z)) - Primitive_Primitive_MaxWPOExtent) * 20.0f, 0.0f, 1.0f));
            }
            else
            {
                _688 = _645;
            }
            _702 = _688;
        }
        _703 = _702;
    }
    else
    {
        _703 = _645;
    }
    float4 _710 = float4((mad(_624 * _542, max(1.0f.xxx, ((((((_447 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_447 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_447 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f), lerp(0.0f.xxx, _542 + (_544 * 0.449999988079071044921875f), View_View_UnlitViewmodeMask.xxx)) + _703) * 1.0f, 0.0f);
    float4 _721 = 0.0f.xxxx;
    if ((View_View_bCheckerboardSubsurfaceProfileRendering == 0.0f) && (View_View_bSubsurfacePostprocessEnabled != 0.0f))
    {
        float4 _720 = _710;
        _720.w = 0.0f;
        _721 = _720;
    }
    else
    {
        _721 = _710;
    }
    float2 _726 = (frac(gl_FragCoord.xy * 0.0078125f.xx) * 128.0f) + float2(-64.3406219482421875f, -72.4656219482421875f);
    float3 _741 = (_448 * 0.5f) + 0.5f.xxx;
    float4 _743 = 0.0f.xxxx;
    _743.x = _741.x;
    _743.y = _741.y;
    _743.z = _741.z;
    _743.w = mad(2.0f, float((Primitive_Primitive_Flags & 256u) != 0u), float((Primitive_Primitive_Flags & 512u) != 0u)) * 0.3333333432674407958984375f;
    float4 _750 = 0.0f.xxxx;
    _750.x = _447.x;
    _750.y = _447.y;
    _750.z = _447.z;
    _750.w = mad(frac(dot(_726.xyx * _726.xyy, float3(20.390625f, 60.703125f, 2.4281208515167236328125f))) - 0.5f, 0.0039215688593685626983642578125f, mad(log2(mad(dot(_624, float3(0.300000011920928955078125f, 0.589999973773956298828125f, 0.10999999940395355224609375f)) * max(1.0f.xxx, ((((((_546 * 2.040400028228759765625f) - 0.3323999941349029541015625f.xxx) * 1.0f) + ((_546 * (-4.79510021209716796875f)) + 0.6417000293731689453125f.xxx)) * 1.0f) + ((_546 * 2.755199909210205078125f) + 0.69029998779296875f.xxx)) * 1.0f).y, View_View_PreExposure, 0.00390625f)), 0.0625f, 0.5f));
    float4 _756 = 0.0f.xxxx;
    _756.x = _514;
    _756.y = 1.0f;
    _756.z = 1.0f;
    _756.w = 1.0f;
    float4 _761 = _721 * View_View_PreExposure;
    float3 _763 = min(_761.xyz, 32256.0f.xxx);
    out_var_SV_Target0 = float4(_763.x, _763.y, _763.z, _761.w);
    out_var_SV_Target1 = _743;
    out_var_SV_Target2 = float4(_446, _445, _444, 0.50588238239288330078125f);
    out_var_SV_Target3 = _750;
    out_var_SV_Target5 = _756;
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
