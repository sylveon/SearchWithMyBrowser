# How to use a custom search engine

## Google Chrome, Vivaldi, Opera, etc...

If you plan on using only Google, the flag `enable-windows-desktop-search-redirection` is your friend.  

If not, the [Chrometana](https://chrome.google.com/webstore/detail/chrometana-redirect-bing/kaicbfmipfpfpjmlbpejaoaflfdnabnc) addon works for you.

## Firefox, Waterfox, Palemoon, etc...

Depending on your preferred search engine, you need to use a different addon:  
- [Google](https://addons.mozilla.org/en-US/firefox/addon/bing-google-1/)
- [DuckDuckGo](https://addons.mozilla.org/en-US/firefox/addon/bing-ddg/)
- For other engines, you'll need to set a custom redirection rule with the [Redirector](https://addons.mozilla.org/en-US/firefox/addon/redirector/) addon using the following regular expression match pattern: `https?:\/\/www.bing.com\/search\?q=([^&]+).*`. Your original, URL-encoded, search query is represented as `$1` when you set your redirection URL.

## Internet Explorer, Edge and other browsers

You can use [@FelixSe](https://github.com/FelixSe)'s fork, available [here](https://github.com/FelixSe/SearchWithMyBrowser/tree/Use-Google-instead-of-Bing).