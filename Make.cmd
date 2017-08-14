@echo off

cd "%~dp0"

rem Call all the make files from subdirectories
FOR /d %%i IN (*) DO (
    IF EXIST %%i\Make.cmd (
        call %%i\Make.cmd
    )
)
pause