@echo off

cd "%~dp0"
"%windir%\Microsoft.NET\Framework\v4.0.30319\csc.exe" /debug:pdbonly /nologo /target:winexe /optimize /highentropyva /nowin32manifest /out:..\Output\SearchWithMyBrowserFCUHack.exe Program.cs