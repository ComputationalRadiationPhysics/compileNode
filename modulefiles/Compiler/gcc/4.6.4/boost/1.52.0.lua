help(
[[
This module loads the Boost libraries.
Compiled libraries that are not header-only:
  date_time, exception, filesystem, log, math,
  program_options, random, regex, serialization,
  signals, system
]])

whatis("Description: Boost: Free Peer-Reviewed C++ Libraries")

-- family ("boost")

local version = "1.52.0"
local base = pathJoin("/opt/gcc/4.6.4-software/boost",version)

setenv( "BOOST_ROOT", base)
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
