﻿﻿Shader "NextMind/Stimulation_unlit"
{
    Properties
    {
        _Color("Color", Color) = (1,1,1,1)
        _MainTex("Main Texture", 2D) = "white" {}
        _Stimulation("Stimulation", 2D) = "gray" {}
        _Blend("Blend",Range(0,1)) = 1
        _Density("Density", Float) = 1
        _ScreenRatio("Screen Ratio", Float) = 1.777
        [Toggle] _OverlayBlending("Overlay blending", Float) = 1
    }

    SubShader
    {
        Tags 
        { 
            "RenderType" = "Opaque"
        }

        CGPROGRAM
        #include "StimulationIncludes.cginc"
        #pragma surface surf NoLighting

        #pragma shader_feature STANDARD SCREEN_COORDINATES TRIPLANAR
        #pragma shader_feature CONSTANT_SIZE
        #pragma shader_feature MAIN_ALPHA

        void surf(Input IN, inout SurfaceOutput o)
        {
            float4 tex;

            float4 baseTex = tex2D(_MainTex, IN.uv_MainTex) * _Color;

#if SCREEN_COORDINATES
            tex = ScreenCoordinatesProjection(IN, baseTex);
#elif TRIPLANAR
            tex = TriplanarProjection(IN, baseTex);
#elif STANDARD
            tex = StandardProjection(IN, baseTex);
#endif

            o.Emission = tex.xyz;
        }

        fixed4 LightingNoLighting(SurfaceOutput s, fixed3 lightDir, fixed atten)
        {
            return fixed4(s.Albedo, s.Alpha);
        }

        ENDCG
    }

    Fallback "Diffuse"
    CustomEditor "NextMindOpaqueShaderGUI"
}