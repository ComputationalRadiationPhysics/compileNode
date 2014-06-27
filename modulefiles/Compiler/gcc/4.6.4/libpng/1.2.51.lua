help(
[[
This module loads libpng-dev
]])

whatis("Description: libpng: the official PNG reference library")

local version = "1.2.51"
local base = pathJoin("/opt/gcc/4.6.4-software/libpng",version)

setenv( "PNG_ROOT", base)
prepend_path("CMAKE_PREFIX_PATH", base)
prepend_path("MANPATH", pathJoin(base, "share/man"))
prepend_path("PATH", pathJoin(base, "bin"))
prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
