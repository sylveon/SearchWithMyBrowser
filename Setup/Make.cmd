@echo off

rem Make output directory
mkdir "%~dp0..\Output\"
echo.

rem Clean older build
del "%~dp0..\Output\SWMB-setup.exe"
echo.

rem Build the installer
"%ProgramFiles(x86)%\Inno Setup 5\ISCC.exe" /Q "%~dp0InnoSetup.iss"
echo.