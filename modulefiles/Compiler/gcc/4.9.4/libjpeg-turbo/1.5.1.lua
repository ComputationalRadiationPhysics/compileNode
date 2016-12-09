help(
[[
This module loads libjpeg-turbo
]])

whatis("Description: libjpeg-turbo is a JPEG image codec that uses SIMD instructions")

local version = "1.5.1"
local base = pathJoin("/opt/gcc/4.9.4-software/libjpeg-turbo",version)

setenv("LIBJPEG_ROOT", base)
prepend_path("CMAKE_PREFIX_PATH", base)
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
