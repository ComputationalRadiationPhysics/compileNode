help(
[[
This module loads the HDF5 Library.
Parallel output and additional shared libs are enabled.
]])

whatis("Description: HDF5: Data Model for Parallel and Serial I/O")

-- family ("hdf5")

local version = "1.8.18"
local base = pathJoin("/opt/gcc/4.9.4-software/openmpi/1.10.4-software/hdf5",version)

setenv( "HDF5_ROOT", base)
prepend_path("CMAKE_PREFIX_PATH", base)
prepend_path("PATH", pathJoin(base, "bin"))
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))

-- Setup Modulepath for packages built by this version of hdf5
-- local mroot = os.getenv("MODULEPATH_ROOT")
-- local mdir = pathJoin(mroot,"MPI/gcc", "4.9.4", "openmpi", "1.10.4", "hdf5", version)
-- prepend_path("MODULEPATH", mdir)
