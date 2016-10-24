@echo off



rem Clean older builds
del /F /Q "%~dp0SearchWithMyBrowser.exe"
del /F /Q "%~dp0SearchWithMyBrowser.pdb"
echo.

FOR %%i IN ("%~dp0SearchWithMyBrowser.exe" "%~dp0SearchWithMyBrowser.pdb") DO (
    IF EXIST %%i (
        IF %0=="%~f0" (
            cls
            echo Could not clean!
            echo.
            echo Try deleting %%i by yourself.
            echo.
            pause
        )
        exit /B
    )
)



rem Build the executable
"%windir%\Microsoft.NET\Framework\v4.0.30319\csc.exe" /nologo /target:winexe /debug "%~dp0SearchWithMyBrowser.cs" > "%temp%\csc.log"

IF NOT EXIST "%~dp0SearchWithMyBrowser.exe" (
    IF %0=="%~f0" (
        cls
        echo Could not compile!
        echo.
        echo The error log might contain relevant information about what happened:
    )
    type "%temp%\csc.log"
    IF %0=="%~f0" (
        echo.
        pause
    )
)