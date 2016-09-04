@echo off
rem If anyone has time to add fail checks, feel free to contribute.
IF NOT EXIST ".\nuget.exe" (
    echo Downloading NuGet...
    powershell -command "& { iwr https://dist.nuget.org/win-x86-commandline/v3.3.0/nuget.exe -OutFile nuget.exe }
    echo.
    echo.
    echo.
)
IF NOT EXIST ".\Microsoft.Net.Compilers.1.2.1\tools\csc.exe" (
    echo Installing compiler...
    .\nuget.exe install Microsoft.Net.Compilers -Version 1.2.1
    echo.
    echo.
    echo.
)
echo Compiling...
.\Microsoft.Net.Compilers.1.2.1\tools\csc.exe SearchWithMyBrowser.cs /target:winexe /debug
echo.
echo.
echo.
echo Done!