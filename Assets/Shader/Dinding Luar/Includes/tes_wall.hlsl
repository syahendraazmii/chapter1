#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void tes_wall_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, float2 control, Texture2D image_36782, Texture2D image_36794, Texture2D image_36788, Texture2D image_36784, out float4 Color, out float3 Normal, out float Smoothness, out float4 Emission, out float AmbientOcculusion, out float Metallic, out float4 Specular)
{
	
	float4 _ImageTexture_36794 = node_image_texture(image_36794, control, 0);
	float4 _Mapping_36796 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, 0), float3(0.1999999, 0.9, 1)), 0);
	float4 _ImageTexture_36782 = node_image_texture(image_36782, _Mapping_36796, 0);
	float4 _NormalMap_36780; node_normal_map(_ImageTexture_36782, control, _NormalMap_36780);
	float4 _ImageTexture_36788 = node_image_texture(image_36788, control, 0);
	float4 _ImageTexture_36784 = node_image_texture(image_36784, control, 0);

	Color = _ImageTexture_36794;
	Normal = _NormalMap_36780;
	Smoothness = 0.0;
	Emission = float4(0.0, 0.0, 0.0, 0.0);
	AmbientOcculusion = _ImageTexture_36788;
	Metallic = _ImageTexture_36784;
	Specular = float4(0.0, 0.0, 0.0, 0.0);
}