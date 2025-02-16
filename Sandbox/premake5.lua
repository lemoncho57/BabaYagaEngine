project "Sandbox"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files { "src/**.h", "src/**.cpp"}

    includedirs 
    {
        "%{wks.location}/BabaYaga/src"
    }

    links 
    {
        "BabaYaga"
    }

    filter "system:Windows"
        systemversion "latest"

    filter "configurations:Debug"
        defines "YAGA_DEBUG"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        defines "YAGA_RELEASE"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        defines "YAGA_DIST"
        runtime "Release"
        optimize "On"