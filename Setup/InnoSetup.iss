[Setup]
AllowRootDirectory=yes
AppCopyright=Made with <3 by Charles Milette
AppendDefaultDirName=no
AppName=SearchWithMyBrowser
AppPublisher=Charles Milette
AppPublisherURL=https://charlesmilette.github.io/
AppVersion=1.0.0
ArchitecturesInstallIn64BitMode=x64 ia64
ChangesAssociations=yes
DefaultDirName={pf}\SearchWithMyBrowser
MinVersion=10.0
OutputBaseFilename=SWMB-setup
SetupIconFile=Resources\Setup.ico
SourceDir=..
ShowLanguageDialog=auto
VersionInfoDescription=Open Cortana searches with your default browser.
;todos
; add small install banner
; add lateral install banner
; add welcome page
; cleanup and organize

[Files]
Source: "Output\SearchWithMyBrowser.exe"; DestDir: "{app}"

[Messages]
BeveledLabel=   Made with <3 by Charles Milette

[Registry]
Root: HKLM; Subkey: "Software\Classes\SearchWithMyBrowser"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\SearchWithMyBrowser"; ValueType: string; ValueName: "FriendlyTypeName"; ValueData: "SearchWithMyBrowser"
Root: HKLM; Subkey: "Software\Classes\SearchWithMyBrowser"; ValueType: string; ValueName: "URL Protocol"
Root: HKLM; Subkey: "Software\Classes\SearchWithMyBrowser\shell\open\command"; ValueType: string; ValueData: """{app}\SearchWithMyBrowser.exe"" ""%1""" 
Root: HKLM; Subkey: "Software\SearchWithMyBrowser"; Flags: uninsdeletekey 
Root: HKLM; Subkey: "Software\SearchWithMyBrowser\Capabilities\URLAssociations"; ValueType: string; ValueName: "microsoft-edge"; ValueData: "SearchWithMyBrowser"
Root: HKLM; Subkey: "Software\RegisteredApplications"; ValueType: string; ValueName: "SearchWithMyBrowser"; ValueData: "Software\SearchWithMyBrowser\Capabilities"; Flags: uninsdeletevalue
