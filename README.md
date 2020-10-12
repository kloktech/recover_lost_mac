# Rrecover Lost Mac
Tools and Documents for recovering lost mac.

Blog Post: https://medium.com/devops-one-problem-at-a-time/tracking-down-a-lost-macbook-ef6550965053

This project was born due to a need to recover a laptop when it was stolen WITHOUT any anti-theft or tracking software installed.  The works are half paperwork/process and half technical.  You might already have some of it setup, then you are obviously more prepare than author.



/prey - build prey project for silent .pkg installation

/firmware_password - build firmware password setter

# Get machine enroll
To control the machine, create a company DEP, unless you're school, you should apply for Apple Business Manager.  DEP = Device Enrollment Program.  It allows companies to configure device automatically without user interaction.  In order to add device to the program, there are 2 paths.  

1. Buy devices via special online shop for your DEP or tell apple about your DEP id when purchased.  Direct purchase doesn't allow adding device to DEP after the sale.
1. Buy device from 3rd party authorized vendors.  They can add the device into DEP at purchase time or after the sale.  I used B&H and was able to add previouly purchased device into DEP.

DEP is important step, without it, user can refuse to install configured profile and packages.  With DEP in place, when machine is re-installed, configuration is added automatically in the background.

## 10.13.4 and higher
sudo profiles renew -type enrollment
## Lower than 10.13.4
sudo /usr/libexec/mdmclient dep nag

## MDM
In order to push changes to machine, MDM(Machine Deployment Management) service is needed.  This is a service that apple will tell machine to pick up configuration from.  The workflow happens at the OS level, machine will tell apple its serial number and Apple to direct machine to configured MDM service based on DEP.

Typically, communication between MDM and Apple is setup with series of token and keys to verify MDM service is setup by owner of DEP.

## References
MDM Package Build Issues
https://blog.eriknicolasgomez.com/2017/04/05/Custom-DEP-Part-5-Dynamic-InstallApplication/

Creating Component and Distribution Package
http://shanekirk.com/2013/10/creating-flat-packages-in-osx/

OSX pkg build
https://matthew-brett.github.io/docosx/flat_packages.html

Package Builder
http://s.sudre.free.fr/Software/Packages/about.html

Package Building
https://themacwrangler.wordpress.com/2017/04/28/packaging-guidelines-for-mac-os/

JAMF Package Building
https://support.jamfnow.com/s/article/360015973211-Tutorial-Deploying-macOS-packages

Checking MDM enrollment
https://derflounder.wordpress.com/2018/03/30/detecting-user-approved-mdm-using-the-profiles-command-line-tool-on-macos-10-13-4/
