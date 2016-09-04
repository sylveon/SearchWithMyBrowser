@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto gotAdmin)
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
goto End
:GotAdmin
if exist "%temp%\getadmin.vbs" (del "%temp%\getadmin.vbs")
pushd "%CD%"
CD /D "%~dp0"
:FileExists
cls
set RequiredFiles=1
IF NOT EXIST ".\SearchWithMyBrowser.exe" (set RequiredFiles=0)
IF /I %RequiredFiles% EQU 0 (
    echo One or more required files does not exists. Are you sure you successfully compiled? After making sure, please continue.
    pause
    goto FileExists
)
:WhereIsExecutable
cls
echo Tip! To directly get the path of a file:
echo     1. Right-click on it while pressing "Shift".
echo     2. Click on "Copy as Path".
echo     3. Right-click in this command prompt.
echo     4. If the path has not pasted itself already, click on "Paste".
echo     5. Press "Enter" to validate.
echo.
echo.
set /P Executablewq=Move the executable at any desired permanent location, and then type its location here: 
call:GetFilenameWithoutQuotes %Executablewq%
IF NOT DEFINED Executable (
    cls
    echo You did not specify a file!
    pause
    goto WhereIsExecutable
)
IF NOT EXIST "%Executable%" (
    cls
    echo The file you specified does not exists!
    pause
    goto WhereIsExecutable
)
cls
"%Executable%" /register
cls
echo A dialog will show after you press any key. Select "SearchWithMyBrowser.exe" and press "OK".
pause
rundll32.exe shell32.dll,OpenAs_RunDLL microsoft-edge:
:End
:GetFilenameWithoutQuotes
if not [%2]==[] set noquotes=1
if [%noquotes%]==[1] (set Executable=%* & exit /b)
set Executable=%~f1
exit /b