workspace "BabaYagaEngine"
    architecture "x64"
    startproject "Sandbox"

    configurations { "Debug", "Release", "Dist"}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Core"
    include "BabaYaga"
group ""

group "Misc"
    include "Sandbox"
group ""