@echo off

rem Make output directory
IF NOT EXIST "%~dp0..\Output\" (
  mkdir "%~dp0..\Output\"
  echo.
)

rem Clean older build
IF EXIST "%~dp0..\Output\SearchWithMyBrowserFCUHack.exe" (
  del "%~dp0..\Output\SearchWithMyBrowserFCUHack.exe"
  echo.
)

rem Build the executable
"%windir%\Microsoft.NET\Framework\v4.0.30319\csc.exe" /debug:pdbonly /nologo /target:winexe /optimize /highentropyva /nowin32manifest /out:"%~dp0..\Output\SearchWithMyBrowserFCUHack.exe" "%~dp0Program.cs"
echo.