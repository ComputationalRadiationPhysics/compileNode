help(
[[
This module loads Ice-T.
]])

whatis("Description: a high-performance sort-last parallel rendering library")

local version = "2.1.1"
local base = pathJoin("/opt/gcc/4.9.4-software/openmpi/1.10.4-software/icet",version)

setenv("ICET_ROOT", base)
-- setenv("IceT_DIR", base)
prepend_path("PATH", pathJoin(base, "bin"))
prepend_path("CMAKE_PREFIX_PATH", pathJoin(base, "lib"))
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
