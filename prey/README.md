## Building A Silent Prey Installer

There are many tracking software.  [Prey Project](https://preyproject.com/) was used because it was free for 3 devices and has some previous work to base off.  Free version only allows 20 capture report, so upgrade to $5/month when the need rises.

As for MDM, Jamf NOW was chosen because there are more community discussion and again, first 3 devices are free.  Be sure to upgrade to Pro version, also free for first 3 devices, in order to upload and deploy custom MacOS packages.

Developer Install ID is needed when deploying package from MDM, at least Jamf NOW requires package to be signed.

To get developer installer id, either sign up as individual developer or company on developer.apple.com. One account is created, add the account to XCode, then create new 'developer installer id'.  Once created, launch 'Keychain Access' by searching for developer and copy the name including the space and hash and put it into DEV_ID.

Also, Jamf NOW requires distribution package, which is different from component package that was build with pkgbuild.  After pkgbuild,  productbuild is used to build distribution package and sign it with DEV_ID provided in cmd.  All the commands are in build.sh

To build prey package for your own, replace "abc" with your prey project API KEY and "dev installer id" with your own developer installer id that you have from xcode.
```
PREY_API_KEY=abc DEV_ID="dev installer id" ./build.sh
```

it will result a distribution package named 'kt-monitor.pkg' signed with your DEV_ID.

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
