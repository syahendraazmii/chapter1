#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void Dinding_dalam_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, float2 name, Texture2D image_38854, Texture2D image_38852, Texture2D image_38856, Texture2D image_38864, out float4 Color, out float3 Normal, out float Smoothness, out float4 Emission, out float AmbientOcculusion, out float Metallic, out float4 Specular)
{
	
	float4 _ImageTexture_38856 = node_image_texture(image_38856, _UV, 0);
	float4 _ImageTexture_38864 = node_image_texture(image_38864, name, 0);
	float4 _Invert_38862 = node_invert(1, _ImageTexture_38864);
	float4 _NormalMap_38850; node_normal_map(_Invert_38862, 1, _NormalMap_38850);
	float4 _ImageTexture_38854 = node_image_texture(image_38854, _UV, 0);
	float4 _ImageTexture_38852 = node_image_texture(image_38852, _UV, 0);

	Color = _ImageTexture_38856;
	Normal = _NormalMap_38850;
	Smoothness = 0.0;
	Emission = _ImageTexture_38854;
	AmbientOcculusion = 0.0;
	Metallic = _ImageTexture_38852;
	Specular = float4(0.0, 0.0, 0.0, 0.0);
}