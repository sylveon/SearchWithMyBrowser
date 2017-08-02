# SearchWithMyBrowser

Since April 28ᵗʰ 2016, Cortana opens searches only in Microsoft Edge to prevent users from using another search engine than Bing.  
SearchWithMyBrowser is a little utility that associates itself with the `microsoft-edge:` protocol, used by Cortana to open Edge. After parsing the request to make sure it's a valid URL, it will redirect it to your default browser.

## Donating

If you like my work, you are more than welcome to [donate](https://PayPal.me/CharlesMilette) (or use the Store version).

## Installing the program

Head over to the [Windows Store](https://www.microsoft.com/store/apps/9PPKNR9RK26R) to grab it.

You can also get a copy in the [releases section](https://github.com/charlesmilette/SearchWithMyBrowser/releases).

## Building the program

Note to users: It is not required to build the program anymore. See precedent section for installation instructions.  

Optional dependencies:
- [Inno Setup](http://www.jrsoftware.org/isinfo.php) **Unicode** - To build the installer.
- [Windows SDK](https://developer.microsoft.com/en-us/windows/downloads/windows-10-sdk), version 10.0.14393 or higher - To build the store package.

If you decided to build the installer, make sure that `ISCC.exe` is in your path. If you decided to build the store package, make sure that `makeappx.exe` is in your path. See [this article](https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/) for instructions.  

To build the whole project (including the installer and the store package), run the `Make.cmd` file at the root of the repository. You can also build subcomponents individually by running the `Make.cmd` file present in their subfolder.

## Boring legal stuff

Copyright (C) 2017  Charles Milette

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see [here](http://www.gnu.org/licenses/).

----------------------------

Some assets used where designed by my friend [dAKirby](http://dakirby309.deviantart.com/). See his other icons [here](http://dakirby309.deviantart.com/art/Simply-Styled-Icon-Set-664-Icons-FREE-469662576).