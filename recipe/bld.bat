call "%RECIPE_DIR%\set_bld_opts.bat"

set MAKEFILE="makefile.vc"

IF NOT EXIST %MAKEFILE% (
set MAKEFILE="gdal/makefile.vc"
)

nmake /f %MAKEFILE% %BLD_OPTS%
if errorlevel 1 exit 1

