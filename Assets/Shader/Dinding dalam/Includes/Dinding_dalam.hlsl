#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void Dinding_dalam_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, float2 name, Texture2D image_13922, Texture2D image_13924, Texture2D image_13926, Texture2D image_13930, out float4 Color, out float3 Normal, out float Smoothness, out float4 Emission, out float AmbientOcculusion, out float Metallic, out float4 Specular)
{
	
	float4 _ImageTexture_13926 = node_image_texture(image_13926, name, 0);
	float4 _ImageTexture_13930 = node_image_texture(image_13930, name, 0);
	float4 _Invert_13932 = node_invert(1, _ImageTexture_13930);
	float4 _NormalMap_13920; node_normal_map(_Invert_13932, 1, _NormalMap_13920);
	float4 _ImageTexture_13922 = node_image_texture(image_13922, name, 0);
	float4 _ImageTexture_13924 = node_image_texture(image_13924, name, 0);

	Color = _ImageTexture_13926;
	Normal = _NormalMap_13920;
	Smoothness = 0.0;
	Emission = _ImageTexture_13922;
	AmbientOcculusion = 0.0;
	Metallic = _ImageTexture_13924;
	Specular = float4(0.0, 0.0, 0.0, 0.0);
}