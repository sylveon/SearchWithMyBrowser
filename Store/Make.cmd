@echo off

rem Make output directory
IF NOT EXIST "%~dp0..\Output\" (
  mkdir "%~dp0..\Output\"
  echo.
)

rem Clean older build
IF EXIST "%~dp0..\Output\StorePackage.appx" (
  del "%~dp0..\Output\StorePackage.appx"
  echo.
)

rem Build the package
cd "%~dp0"
makeappx pack /f "%~dp0Mapping.inf" /p "%~dp0..\Output\StorePackage.appx" /o > nul
echo.