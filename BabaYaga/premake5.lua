project "BabaYaga"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"
    
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp"
    }
    
    includedirs
    {
        --"%{prj.name}/vendor/"
    }

    filter "system:windows"
        systemversion "latest"

        defines { "BUILD_DLL"}

    filter "configurations:Debug"
        defines "YAGA_DEBUG"
        symbols "On"

    filter "configurations:Release"
        defines "YAGA_RELEASE"
        optimize "On"

    filter "configurations:Dist"
        defines "YAGA_DIST"
        optimize "On"