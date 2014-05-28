help(
[[
This module loads the GNU Compiler Collection suite.
This provides a C/C++ and fortran compiler
]])

whatis("Description: GCC: The GNU Compile Collection for C/C++/Fortran")

family ("compiler")

local version = "4.6.4"
local base = pathJoin("/opt/gcc",version)
local cc = pathJoin(base,"bin/gcc")
local cxx = pathJoin(base,"bin/g++")
local fc = pathJoin(base,"bin/gfortran")

setenv( "GCC_ROOT", base)
setenv( "CC", cc )
setenv( "CXX", cxx )
setenv( "FC", fc )
setenv( "F77", fc )
prepend_path("MANPATH", pathJoin(base, "share/man"))
prepend_path("PATH", pathJoin(base, "bin"))
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib64"))

-- Setup Modulepath for packages built by this compiler
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir = pathJoin(mroot,"Compiler/gcc", version)
prepend_path("MODULEPATH", mdir)
