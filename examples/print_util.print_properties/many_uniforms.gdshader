shader_type spatial;

uniform bool u_bool0 = false;
uniform bool u_bool1 = true;
uniform bvec2 u_bvec2 = bvec2(true, false);
uniform bvec3 u_bvec3;
uniform bvec4 u_bvec4 = bvec4(true);
uniform int u_int = 64;
uniform int u_int_hint_range : hint_range(0, 3);
uniform int u_int_hint_range_step : hint_range(0, 6, 2);
uniform ivec2 u_ivec2 = ivec2(4, -4);
uniform ivec3 u_ivec3;
uniform ivec4 u_ivec4 = ivec4(9, 0, 0, 0);
uniform uint u_uint;
uniform uvec2 u_uvec2 = uvec2(uint(1), uint(2));
uniform uvec3 u_uvec3;
uniform uvec4 u_uvec4;
uniform float u_float = -0.0001;
uniform float u_float_hint_range : hint_range(0.0, 1.0);
uniform float u_float_hint_range_step : hint_range(0.0, 1.0, 0.1);
uniform vec2 u_vec2;
uniform vec3 u_vec3 : source_color = vec3(0.1);
uniform vec4 u_vec4 : source_color;
uniform lowp vec4 u_vec4_lowp = vec4(0.0, 1.0, 2.0, 3.0);
uniform mediump vec4 u_vec4_mediump = vec4(0.0, 1.0, 2.0, 3.0);
uniform highp vec4 u_vec4_highp = vec4(0.0, 1.0, 2.0, 3.0);
uniform mat2 u_mat2 = mat2(vec2(1.0, 0.0), vec2(0.0, 1.0));
uniform mat3 u_mat3 = mat3(vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), vec3(0.0, 0.0, 1.0));
uniform mat4 u_mat4 = mat4(1.0);
uniform sampler2D u_sampler;
uniform sampler2D u_sampler_source_color : source_color;
uniform sampler2D u_hint_normal : hint_normal;
uniform sampler2D u_hint_default_white : hint_default_white;
uniform sampler2D u_hint_default_black : hint_default_black;
uniform sampler2D u_hint_default_transparent : hint_default_transparent;
uniform sampler2D u_hint_anisotropy : hint_anisotropy;
uniform sampler2D u_filter_nearest : filter_nearest;
uniform sampler2D u_filter_linear_mipmap : filter_linear_mipmap;
uniform sampler2D u_repeat_enable : repeat_enable;
uniform sampler2D u_repeat_disable : repeat_disable;
uniform sampler2D u_screen_texture : hint_screen_texture;
uniform sampler2D u_depth_texture : hint_depth_texture;
uniform sampler2D u_normal_roughness : hint_normal_roughness_texture;
uniform isampler2D u_isampler2D;
uniform usampler2D u_usampler2D;
uniform sampler2DArray u_sampler2DArray;
uniform isampler2DArray u_isampler2DArray;
uniform usampler2DArray u_usampler2DArray;
uniform sampler3D u_sampler3D;
uniform isampler3D u_isampler3D;
uniform usampler3D u_usampler3D;
uniform samplerCube u_samplerCube;
uniform samplerCubeArray u_samplerCubeArray;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
}

void light() {
	// Called for every pixel for every light affecting the material.
}
