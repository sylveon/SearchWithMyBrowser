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

rem Build and sign the package
"C:\Program Files (x86)\Windows Kits\10\bin\x64\makeappx.exe" pack /f Mapping.inf /p ..\Output\StorePackage.appx
"C:\Program Files (x86)\Windows Kits\10\bin\x64\signtool.exe" sign /a /v /fd SHA256 /f ..\..\SWMB-key.pfx ..\Output\StorePackage.appx
echo.