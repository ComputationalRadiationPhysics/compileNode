help(
[[
This module loads rivlib
Rivlib was compiled with minimal dependencies and without X11.
]])

whatis("Description: Rivlib: Library for RIV providers (and more)")

local version = "1.0.2"
local base = pathJoin("/opt/gcc/4.9.4-software/rivlib",version)

setenv("RIVLIB_ROOT", base)
setenv("VISLIB_ROOT", base)
setenv("THELIB_ROOT", base)
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
