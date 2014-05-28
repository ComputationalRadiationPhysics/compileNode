help(
[[
This module loads the Open MPI library.
]])

whatis("Description: OpenMPI: Open Source Message Passing Interface Implementation")

family ("mpi")

local version = "1.6.5"
local base = pathJoin("/opt/gcc/4.6.4-software/openmpi",version)

local mpicc = pathJoin(base,"bin/mpicc")
local mpicxx = pathJoin(base,"bin/mpic++")
local mpifc = pathJoin(base,"bin/mpif90")
local mpif77 = pathJoin(base,"bin/mpif77")

setenv( "MPI_ROOT", base)
setenv( "MPICC", mpicc )
setenv( "MPICXX", mpicxx )
setenv( "MPIFC", mpifc )
setenv( "MPIF77", mpif77 )

prepend_path("MANPATH", pathJoin(base, "share/man"))
prepend_path("PATH", pathJoin(base, "bin"))
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))

-- Setup Modulepath for packages built by this version of MPI
local mroot = os.getenv("MODULEPATH_ROOT")
local mdir = pathJoin(mroot,"MPI/gcc", "4.6.4", "openmpi", version)
prepend_path("MODULEPATH", mdir)
