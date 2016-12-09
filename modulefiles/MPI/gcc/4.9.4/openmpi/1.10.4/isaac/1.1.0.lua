help(
[[
This module loads ISAAC.
]])

whatis("Description: In Situ Animation of Accelerated Computations")

local version = "1.1.0"
local base = pathJoin("/opt/gcc/4.9.4-software/openmpi/1.10.4-software/isaac",version)

prereq("cuda")
prereq("boost")
prereq("libjpeg-turbo")
prereq("jansson")
prereq("openmpi")
prereq("icet")

setenv("ISAAC_DIR", base)
prepend_path("CMAKE_PREFIX_PATH", pathJoin(base, "include"))
prepend_path("PATH", pathJoin(base, "bin"))
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))

-- prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
