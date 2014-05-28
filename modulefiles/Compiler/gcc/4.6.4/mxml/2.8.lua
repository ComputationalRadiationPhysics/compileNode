help(
[[
This module loads Mini-XML from
  http://www.msweet.org/projects.php?Z3
]])

whatis("Description: Mini-XML: A Small XML Library")

local version = "2.8"
local base = pathJoin("/opt/gcc/4.6.4-software/mxml",version)

setenv( "MXML_ROOT", base)
prepend_path("MANPATH", pathJoin(base, "share/man"))
prepend_path("PATH", pathJoin(base, "bin"))
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
