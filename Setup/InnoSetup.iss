[Setup]
AllowRootDirectory=yes
AppCopyright=Copyright © 2017 Charles Milette <charles.milette@gmail.com>
AppendDefaultDirName=no
AppName=SearchWithMyBrowser
AppPublisher=Charles Milette
AppPublisherURL=https://charlesmilette.github.io/
AppVersion=1.0.0
ArchitecturesInstallIn64BitMode=x64 ia64
ChangesAssociations=yes
DefaultDirName={pf}\SearchWithMyBrowser
DisableWelcomePage=no
MinVersion=10.0
OutputBaseFilename=SWMB-setup
SetupIconFile=Resources\Setup.ico
ShowLanguageDialog=auto
SourceDir=..
VersionInfoDescription=Open Cortana searches with your default browser.
WizardImageFile=Resources\SetupSidebar.bmp
WizardSmallImageFile=Resources\SetupHeader.bmp

[Files]
Source: "Output\SearchWithMyBrowser.exe"; DestDir: "{app}"

[Registry]
Root: HKLM; Subkey: "Software\Classes\SearchWithMyBrowser"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Classes\SearchWithMyBrowser"; ValueType: string; ValueName: "FriendlyTypeName"; ValueData: "SearchWithMyBrowser"
Root: HKLM; Subkey: "Software\Classes\SearchWithMyBrowser"; ValueType: string; ValueName: "URL Protocol"
Root: HKLM; Subkey: "Software\Classes\SearchWithMyBrowser\shell\open\command"; ValueType: string; ValueData: """{app}\SearchWithMyBrowser.exe"" ""%1""" 
Root: HKLM; Subkey: "Software\SearchWithMyBrowser"; Flags: uninsdeletekey 
Root: HKLM; Subkey: "Software\SearchWithMyBrowser\Capabilities\URLAssociations"; ValueType: string; ValueName: "microsoft-edge"; ValueData: "SearchWithMyBrowser"
Root: HKLM; Subkey: "Software\RegisteredApplications"; ValueType: string; ValueName: "SearchWithMyBrowser"; ValueData: "Software\SearchWithMyBrowser\Capabilities"; Flags: uninsdeletevalue

[Messages]
BeveledLabel=   Made with <3 by Charles Milette

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "armenian"; MessagesFile: "compiler:Languages\Armenian.islu"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile: "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile: "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile: "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "finnish"; MessagesFile: "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"
Name: "greek"; MessagesFile: "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile: "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"