@echo off

if [%APPVEYOR%] NEQ [] path C:\Program Files (x86)\Windows Kits\10\bin\x64;C:\Program Files (x86)\Inno Setup 5;%PATH%

cd "%~dp0"

IF EXIST Output (rd /s /q Output) ELSE (mkdir Output)

rem Call all the make files from subdirectories
FOR /d %%i IN (*) DO (
    cd "%~dp0%%i"
    IF EXIST Make.cmd (
        call Make.cmd
    )
    IF [%APPVEYOR%] EQU [] (
        IF EXIST DisabledMake.cmd (
            call DisabledMake.cmd
        )
    )
)

if [%APPVEYOR%] EQU [] pause