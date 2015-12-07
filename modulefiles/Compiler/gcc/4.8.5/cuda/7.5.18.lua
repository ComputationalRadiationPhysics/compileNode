help(
[[
This module loads CUDA 7.5.18 (production release).
]])

whatis("Description: CUDA: Nvidia Parallel Computing Platform")

-- family ("cuda")

local version = "7.5.18"
local base = pathJoin("/opt/gcc/4.8.5-software/cuda",version)

setenv( "CUDA_ROOT", base)
prepend_path("MANPATH", pathJoin(base, "doc/man"))
prepend_path("PATH", pathJoin(base, "bin"))
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib64"))
