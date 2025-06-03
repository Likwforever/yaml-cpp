project "yaml-cpp"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	defines
	{
		"YAML_CPP_STATIC_DEFINE",
	}

	files
	{
		"src/**.h",
		"src/**.cpp",

        "include/**.h",
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
        staticruntime "on"

	filter "system:linux"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "on"


	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"