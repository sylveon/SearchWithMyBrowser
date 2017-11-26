@echo off

set errorcheck=IF %%ERRORLEVEL%% NEQ 0 exit /B %%ERRORLEVEL%%

if [%APPVEYOR%] NEQ [] path C:\Program Files (x86)\Windows Kits\10\bin\x64;C:\Program Files (x86)\Inno Setup 5;%PATH%

cd "%~dp0"

rem Call all the make files from subdirectories
FOR /d %%i IN (*) DO (
    IF EXIST %%i\Make.cmd (
        call %%i\Make.cmd
        %errorcheck%
    )
)
if [%APPVEYOR%] EQU [] pause