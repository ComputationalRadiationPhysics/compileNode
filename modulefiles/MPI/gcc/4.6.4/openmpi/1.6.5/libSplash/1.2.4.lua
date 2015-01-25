help(
[[
This module loads libSplash.
The parallel mode is enabled.
]])

whatis("Description: libSplash: Simple Parallel file output Library for Accumulating Simulation data using Hdf5")

local version = "1.2.4"
local base = pathJoin("/opt/gcc/4.6.4-software/openmpi/1.6.5-software/libSplash",version)

-- prereq("hdf5/1.8.13")
-- prereq("openmpi/1.6.5")

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
