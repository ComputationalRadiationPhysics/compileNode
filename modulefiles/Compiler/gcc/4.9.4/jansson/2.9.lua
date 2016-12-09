help(
[[
This module loads Jansson
]])

whatis("Description: C library for encoding, decoding and manipulating JSON data")

local version = "2.9"
local base = pathJoin("/opt/gcc/4.9.4-software/jansson",version)

setenv("JANSSON_ROOT", base)
-- setenv("Jansson_DIR", base)
prepend_path("CMAKE_PREFIX_PATH", base)
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
