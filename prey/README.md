To build prey package for your own, replace "abc" with your prey project API KEY and "dev installer id" with your own developer installer id that you have from xcode.

```
PREY_API_KEY=abc DEV_ID="dev installer id" ./build.sh
```

it will result a distribution package named 'kt-monitor.pkg'.

You can install the package locally with 
```
sudo /usr/sbin/installer -pkg kt-monitor.pkg -target /
```
and it will download and install prey with API key supplied during build.


==Troubleshooting
Expand result pkg, ensure it's distribution package which will consisit a 'Distribution' file at root level
```
pkgutil --expand kt-monitor.pkg ./kt-monitor
```
