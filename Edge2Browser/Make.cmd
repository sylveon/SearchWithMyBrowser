@echo off



rem Make output directory
mkdir "%~dp0..\Output\"



rem Clean older builds
del /F /Q "%~dp0..\Output\SearchWithMyBrowser.exe"
del /F /Q "%~dp0..\Output\SearchWithMyBrowser.pdb"
echo.



rem Build the executable
"%windir%\Microsoft.NET\Framework\v4.0.30319\csc.exe" /nologo /target:winexe /debug /optimize /nowin32manifest /win32icon:"%~dp0..\Resources\Edge2Browser.ico" /out:"%~dp0..\Output\SearchWithMyBrowser.exe" "%~dp0Program.cs"