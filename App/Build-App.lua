project "App"
   kind "ConsoleApp"
   language "C++"
   cppdialect "C++20"
   targetdir "Binaries/%{cfg.buildcfg}"
   staticruntime "off"

   dependson "ChessStates-Core"

   defines{"SFML_STATIC"}

   files { "Source/**.h", "Source/**.cpp" }

   includedirs
   {
      "Source",

	  -- Include Core
	  "../ChessStates-Core/Source",
      "../ChessStates-Core/Res/SFML-2.6.1/include",
      "../ChessStates-Core"
   }

   links
   {
      "ChessStates-Core",
   }

   libdirs{"../ChessStates-Core/Res/SFML-2.6.1/lib"}

   targetdir ("../Binaries/" .. OutputDir .. "/%{prj.name}")
   objdir ("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

   filter "system:windows"
       systemversion "latest"
       defines { "WINDOWS" }

   filter "configurations:Debug"
       defines { "DEBUG" }
       runtime "Debug"
       symbols "On"
       links{"sfml-graphics-s-d",
       "sfml-window-s-d",
       "sfml-system-s-d",
       "opengl32",
       "winmm",
       "gdi32",
       "freetype"}

   filter "configurations:Release"
       defines { "RELEASE" }
       runtime "Release"
       optimize "On"
       symbols "On"
       links{"sfml-graphics-s-d",
       "sfml-window-s-d",
       "sfml-system-s-d",
       "opengl32",
       "winmm",
       "gdi32",
       "freetype"}

   filter "configurations:Dist"
       defines { "DIST" }
       runtime "Release"
       optimize "On"
       symbols "Off"
       links{"sfml-graphics-s-d",
       "sfml-window-s-d",
       "sfml-system-s-d",
       "opengl32",
       "winmm",
       "gdi32",
       "freetype"}