project "ImGuizmo"
    kind "StaticLib"
    language "C++"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "*.h",
        "*.cpp",
    }

	includedirs
	{
		"../imgui/"
	}

	links 
	{ 
		"ImGui"
	}
    
	filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"

    filter "system:linux"
        pic "On"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
        
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
        
    filter "configurations:Release"
        runtime "Release"
        optimize "on"
