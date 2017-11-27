@echo off

cd "%~dp0"
makepri createconfig /cf priconfig.xml /pv 10.0.0 /dq en-US /o
makepri new /pr . /cf .\priconfig.xml /o
copy ..\Output\SearchWithMyBrowser.exe .
copy ..\Output\SearchWithMyBrowserFCUHack.exe .
makeappx pack /d . /p ..\Output\StorePackage.appx /o
git clean -f