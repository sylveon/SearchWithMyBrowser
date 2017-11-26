@echo off

set errorcheck=IF %%ERRORLEVEL%% NEQ 0 exit /B %%ERRORLEVEL%%

rem Make output directory
IF NOT EXIST "%~dp0..\Output\" (
  mkdir "%~dp0..\Output\"
  %errorcheck%
  echo.
)

rem Clean older build
IF EXIST "%~dp0..\Output\SWMB-setup.exe" (
  del "%~dp0..\Output\SWMB-setup.exe"
  %errorcheck%
  echo.
)

rem Build the installer
ISCC /Q "%~dp0InnoSetup.iss"
%errorcheck%
echo.