project "ChessStates-Core"
   kind "StaticLib"
   language "C++"
   cppdialect "C++20"
   targetdir "Binaries/%{cfg.buildcfg}"
   staticruntime "off"

   files { "Source/**.h", "Source/**.cpp", "Source/**.c", "Source/**.hpp" }

    defines{"SFML_STATIC"}

   includedirs
   {
      "Source",
      "Res/SFML-2.6.1/include"
   }

   libdirs {"Res/SFML-2.6.1/lib"}

   targetdir ("../Binaries/" .. OutputDir .. "/%{prj.name}")
   objdir ("../Binaries/Intermediates/" .. OutputDir .. "/%{prj.name}")

   filter "system:windows"
       systemversion "latest"
       defines { }

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
