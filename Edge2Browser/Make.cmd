@echo off



rem Make output directory
mkdir "%~dp0..\Output\"
echo.



rem Clean older build
del "%~dp0..\Output\SearchWithMyBrowser.exe"
echo.



rem Build the executable
"%windir%\Microsoft.NET\Framework\v4.0.30319\csc.exe" /nologo /target:winexe /optimize /nowin32manifest /win32icon:"%~dp0..\Resources\Edge2Browser.ico" /out:"%~dp0..\Output\SearchWithMyBrowser.exe" "%~dp0Program.cs"
echo.