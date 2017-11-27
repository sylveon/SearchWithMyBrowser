@echo off

set errorcheck=IF %%ERRORLEVEL%% NEQ 0 exit /B %%ERRORLEVEL%%

rem Make output directory
IF NOT EXIST "%~dp0..\Output\" (
  mkdir "%~dp0..\Output\"
  %errorcheck%
  echo.
)

rem Clean older build
IF EXIST "%~dp0..\Output\StorePackage.appx" (
  del "%~dp0..\Output\StorePackage.appx"
  %errorcheck%
  echo.
)

rem Build the package
cd "%~dp0"
makepri createconfig /cf "%~dp0priconfig.xml" /dq en-US
%errorcheck%
makepri new /pr "%~dp0" /cf "%~dp0priconfig.xml"
%errorcheck%
makeappx pack /d "%~dp0" /p "%~dp0..\Output\StorePackage.appx" /o > nul
%errorcheck%
echo.