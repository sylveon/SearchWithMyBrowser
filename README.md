# SearchWithMyBrowser

Since April 28th, Cortana restrics Microsoft Edge as it's browser to force Bing upon users.  
SearchWithMyBrowser is a little utility that associates itself with the `microsoft-edge:` protocol, used by Cortana to open Edge. It will then simply redirect the request to your default browser.  
To use another search engine than Bing, please refer to [this documentation](https://github.com/charlesmilette/SearchWithMyBrowser/blob/master/CustomSearchEngine.md).  

[This program is licensed under the WTFPL.](https://raw.githubusercontent.com/charlesmilette/SearchWithMyBrowser/master/LICENSE)

## Do you like my work?

If you like this program or what I am doing, you are more than welcome to [donate to me via PayPal](https://paypal.me/CharlesMilette). I will add more features to the program once I reach different milestones:  

All funded for now! Working on the new features (new install script, installer and Windows Store release).

## Building the program

A little batch file, `make.cmd`, contains everything you need. Simply run it.  
If you want compile it manually, simply call `csc.exe` from the built-in .NET Framework (in the folder `%windir%\Microsoft.NET\Framework\v4.0.30319`) on the `SearchWithMyBrowser.cs` file with `winexe` as target. (additionnal command line switches are at your discretion)

## Installing the program

Once again, `install.cmd` should fill all your needs.  
If not, simply move the file `SearchWithMyBrowser.exe` to a permanent location (the file will need to remain here until you uninstall SearchWithMyBrowser) and call it as admin with the command line option `/register`.  
If you're even more paranoid, manually create the registry entries, either with a `.reg` file or the Registry Editor:  

```registry
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\Classes\SearchWithMyBrowser]
"URL Protocol"=""
@="URL:SearchWithMyBrowser Protocol"

[HKEY_LOCAL_MACHINE\SOFTWARE\Classes\SearchWithMyBrowser\shell\open\command]
@="\"C:\\Something\\SearchWithMyBrowser.exe\" \"%1\""

[HKEY_LOCAL_MACHINE\SOFTWARE\SearchWithMyBrowser\Capabilities\URLAssociations]
"microsoft-edge"="SearchWithMyBrowser"

[HKEY_LOCAL_MACHINE\SOFTWARE\RegisteredApplications]
"SearchWithMyBrowser"="Software\\SearchWithMyBrowser\\Capabilities"
```  

If you appear to not have used the provided `install.cmd` to install the program, you can run `rundll32.exe shell32.dll,OpenAs_RunDLL microsoft-edge:` to then set SearchWithMyBrowser as the protocol handler.

## Uninstalling the program

Simply call it as admin with the command line option `/unregister`, and delete the file.  
Or manually reverse the registry change you made while installing it and delete the file.