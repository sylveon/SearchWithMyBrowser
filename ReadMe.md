# SearchWithMyBrowser

Since April 28ᵗʰ, Cortana opens searches only in Microsoft Edge to prevent users from using another search engine than Bing.  
SearchWithMyBrowser is a little utility that associates itself with the `microsoft-edge:` protocol, used by Cortana to open Edge. After parsing the request to make sure it's a valid URL, it will redirect it to your default browser.

## Donating

If you like my work, you are more than welcome to [donate](https://PayPal.me/CharlesMilette).

## Installing the program

Head over to the [releases section](https://github.com/charlesmilette/SearchWithMyBrowser/releases) to download the latest version. Once downloaded, run the installer and follow the instructions.  
If for any particular reason you need to test an executable you builded yourself, you can either make the same registry entries than the installer or just overwrite the file created by the installer.

## Building the program

If you want to build the installer, make sure you have the latest release of [Inno Setup](http://www.jrsoftware.org/isinfo.php) installed in the default location.  
To build the whole project (including the installer), run the `Make.cmd` file at the root of the repository. You can also build subcomponents individually by running the `Make.cmd` file present in their subfolder.

## Boring legal stuff

Copyright © 2017 Charles Milette <charles.milette@gmail.com>  
This work is free. You can redistribute it and/or modify it under the terms of the Do What The Fuck You Want To Public License, Version 2, as published by Sam Hocevar. See the LICENSE file for more details.

Some assets used where designed by my friend [dAKirby](http://dakirby309.deviantart.com/). See his other icons [here](http://dakirby309.deviantart.com/art/Simply-Styled-Icon-Set-664-Icons-FREE-469662576).