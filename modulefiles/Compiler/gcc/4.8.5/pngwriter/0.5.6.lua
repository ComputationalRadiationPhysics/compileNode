help(
[[
This module loads PNGwriter
]])

whatis("Description: PNGwriter: C++ library for creating PNG images")

local version = "0.5.6"
local base = pathJoin("/opt/gcc/4.8.5-software/pngwriter",version)

-- load libpng
if (mode() == "load") then
  if ( not isloaded("libpng") ) then
    load("libpng")
  end
end

setenv( "PNGWRITER_ROOT", base)
-- prepend_path("C_INCLUDE_PATH", pathJoin(base, "include"))
-- prepend_path("CPLUS_INCLUDE_PATH", pathJoin(base, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"))
