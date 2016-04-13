help(
[[
This module loads libSplash.
The parallel mode is enabled.
]])

whatis("Description: libSplash: Simple Parallel file output Library for Accumulating Simulation data using Hdf5")

local version = "1.4.0"
local base = pathJoin("/opt/gcc/4.8.5-software/openmpi/1.10.1-software/libSplash",version)

-- prereq("hdf5/1.8.16")
-- prereq("openmpi/1.10.1")

-- load HDF5
if (mode() == "load") then
  if ( not isloaded("hdf5") ) then
    load("hdf5")
  end
end

setenv( "SPLASH_ROOT", base)
prepend_path("PATH", pathJoin(base, "bin"))
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
prepend_path("PYTHONPATH", pathJoin(base, "bin"))
