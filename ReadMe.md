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

## Installing the program

Run the `Setup.exe` file in the Output folder. If you need to use a custom binary for any purpose, run the install then overwrite the installed filed with your own.  