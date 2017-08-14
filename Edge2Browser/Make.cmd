@echo off

rem Make output directory
IF NOT EXIST "%~dp0..\Output\" (
  mkdir "%~dp0..\Output\"
  echo.
)

rem Clean older build
IF EXIST "%~dp0..\Output\SearchWithMyBrowser.exe" (
  del "%~dp0..\Output\SearchWithMyBrowser.exe"
  echo.
)

rem Build the executable
"%windir%\Microsoft.NET\Framework\v4.0.30319\csc.exe" /debug:pdbonly /nologo /target:winexe /optimize /highentropyva /nowin32manifest /win32icon:"%~dp0..\Resources\Edge2Browser.ico" /out:"%~dp0..\Output\SearchWithMyBrowser.exe" "%~dp0Program.cs"
echo.