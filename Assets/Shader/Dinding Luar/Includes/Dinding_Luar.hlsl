#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void Dinding_Luar_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, float2 control, Texture2D image_13434, Texture2D image_13440, Texture2D image_13442, Texture2D image_13444, out float4 Color, out float3 Normal, out float Smoothness, out float4 Emission, out float AmbientOcculusion, out float Metallic, out float4 Specular)
{
	
	float4 _ImageTexture_13440 = node_image_texture(image_13440, control, 0);
	float4 _Mapping_13438 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, 0), float3(0.1999999, 0.9, 1)), 0);
	float4 _ImageTexture_13434 = node_image_texture(image_13434, _Mapping_13438, 0);
	float4 _NormalMap_13436; node_normal_map(_ImageTexture_13434, control, _NormalMap_13436);
	float4 _ImageTexture_13442 = node_image_texture(image_13442, control, 0);
	float4 _ImageTexture_13444 = node_image_texture(image_13444, control, 0);

	Color = _ImageTexture_13440;
	Normal = _NormalMap_13436;
	Smoothness = 0.0;
	Emission = float4(0.0, 0.0, 0.0, 0.0);
	AmbientOcculusion = _ImageTexture_13442;
	Metallic = _ImageTexture_13444;
	Specular = float4(0.0, 0.0, 0.0, 0.0);
}