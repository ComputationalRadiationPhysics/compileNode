help(
[[
This module loads CMake.
]])

whatis("Description: CMake: A cross-platform Open-Source Build System System")

local version = "2.8.12.2"
local base = pathJoin("/opt/cmake",version)

setenv( "CMAKE_ROOT", base)
prepend_path("MANPATH", pathJoin(base, "man"))
prepend_path("PATH", pathJoin(base, "bin"))
