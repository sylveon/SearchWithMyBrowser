@echo off

rem Make output directory
IF NOT EXIST "%~dp0..\Output\" (
  mkdir "%~dp0..\Output\"
  echo.
)

rem Clean older build
IF EXIST "%~dp0..\Output\SWMB-setup.exe" (
  del "%~dp0..\Output\SWMB-setup.exe"
  echo.
)

rem Build the installer
ISCC.exe /Q "%~dp0InnoSetup.iss"
echo.