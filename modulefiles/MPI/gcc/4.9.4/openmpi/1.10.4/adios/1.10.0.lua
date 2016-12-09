help(
[[
This module loads ADIOS.
]])

whatis("Description: ADIOS: The Adaptable IO System")

local version = "1.10.0"
local base = pathJoin("/opt/gcc/4.9.4-software/openmpi/1.10.4-software/adios",version)

-- prereq("hdf5/1.8.16")

setenv("ADIOS_ROOT", base)
prepend_path("PATH", pathJoin(base, "bin"))
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
-- prepend_path("PYTHONPATH", pathJoin(base, "bin"))
