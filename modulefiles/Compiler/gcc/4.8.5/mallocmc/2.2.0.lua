help(
[[
This module loads mallocMC.
This is a header only library, depending on boost and cuda.
]])

whatis("Description: mallocMC: Memory Allocator for Many Core Architectures")

local version = "2.2.0crp"
local base = pathJoin("/opt/gcc/4.8.5-software/mallocmc",version)

-- load CUDA, Boost
if (mode() == "load") then
  if ( not isloaded("cuda") ) then
    load("cuda")
  end
  if ( not isloaded("boost") ) then
    load("boost")
  end
end

setenv( "MALLOCMC_ROOT", base)
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
