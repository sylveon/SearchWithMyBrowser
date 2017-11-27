# SearchWithMyBrowser

[![Windows Store shield](https://img.shields.io/github/release/sylveon/SearchWithMyBrowser.svg?label=windows%20store&colorB=ff69b4)](https://www.microsoft.com/store/apps/9PPKNR9RK26R?ocid=badge) [![PayPal Donations shield](https://img.shields.io/badge/donations-paypal-blue.svg)](https://PayPal.me/CharlesMilette) [![Build status](https://img.shields.io/appveyor/ci/sylveon/SearchWithMyBrowser/master.svg)](https://ci.appveyor.com/project/sylveon/searchwithmybrowser)

Since April 28ᵗʰ 2016, Cortana opens searches only in Microsoft Edge to prevent users from using another search engine than Bing.  
SearchWithMyBrowser is a little utility that associates itself with the `microsoft-edge:` protocol, used by Cortana to open Edge. After parsing the request to make sure it's a valid URL, it will redirect it to your default browser.

## Installing the program

Click on this image to get it on the Microsoft Store:

[<img src="https://assets.windowsphone.com/85864462-9c82-451e-9355-a3d5f874397a/English_get-it-from-MS_InvariantCulture_Default.png" alt="Get it from Microsoft" width="200"/>](https://www.microsoft.com/store/apps/9PPKNR9RK26R?ocid=badge)

You can also get a copy in the [GitHub releases section](https://github.com/charlesmilette/SearchWithMyBrowser/releases).

## Building the program

Note to users: It is not required to build the program anymore. See precedent section for installation instructions.  

Optional dependencies:
- [Inno Setup](http://www.jrsoftware.org/isinfo.php) **Unicode** - To build the installer.
- [Windows SDK](https://developer.microsoft.com/en-us/windows/downloads/windows-10-sdk), version 10.0.14393 or higher - To build the Store package.

If you decided to build the installer, make sure that `ISCC.exe` is in your path. If you decided to build the store package, make sure that `makeappx.exe` is in your path. See [this article](https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/) for instructions.  

To build the whole project (including the installer and the store package), run the `Make.cmd` file at the root of the repository. You can also build subcomponents individually by running the `Make.cmd` file present in their folder.

## Boring legal stuff

Copyright (C) 2017  Charles Milette

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see [here](http://www.gnu.org/licenses/).

----------------------------

All assets used, with exception of the GitHub shields and "Get it from Microsoft" badge, where designed by [@dAKirby309](https://github.com/dAKirby309).  
For the latest version of the Windows Store edition's privacy policy, you can find it on my website: https://charlesmilette.net/swmb/privacy-policy