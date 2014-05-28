help(
[[
This module loads Python.
]])

whatis("Description: Python: The Powerful Programming Language")

-- family ("python")

local version = "2.7.6"
local base = pathJoin("/opt/gcc/4.6.4-software/python",version)

-- for CMake
setenv("PYTHON_ROOT", base)
-- geneal Python environment variable
setenv("PYTHONHOME", base)

-- for modules set PYTHONPATH

prepend_path("MANPATH", pathJoin(base, "sahre/man"))
prepend_path("PATH", pathJoin(base, "bin"))
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
