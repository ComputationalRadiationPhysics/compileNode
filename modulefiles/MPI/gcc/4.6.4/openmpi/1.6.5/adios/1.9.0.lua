help(
[[
This module loads ADIOS.
]])

whatis("Description: ADIOS: The Adaptable IO System")

local version = "1.9.0"
local base = pathJoin("/opt/gcc/4.6.4-software/openmpi/1.6.5-software/adios",version)

-- prereq("hdf5/1.8.13")

-- load Mini-XML
if (mode() == "load") then
  if ( not isloaded("mxml") ) then
    load("mxml")
  end
end

setenv("ADIOS_ROOT", base)
prepend_path("PATH", pathJoin(base, "bin"))
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
-- prepend_path("PYTHONPATH", pathJoin(base, "bin"))
