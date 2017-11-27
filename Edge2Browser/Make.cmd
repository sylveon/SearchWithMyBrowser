@echo off

cd "%~dp0"
"%windir%\Microsoft.NET\Framework\v4.0.30319\csc.exe" /debug:pdbonly /nologo /target:winexe /optimize /highentropyva /win32manifest:Manifest.xml /win32icon:Edge2Browser.ico /out:..\Output\SearchWithMyBrowser.exe Program.cs