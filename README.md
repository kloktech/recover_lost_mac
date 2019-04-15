# Rrecover Lost Mac
Tools and Documents for recovering lost mac.

This project was born due to a need to recover a laptop when it was stolen WITHOUT any anti-theft or tracking software installed.  The works are half paperwork/process and half technical.  You might already have some of it setup, then you are obviously more prepare than author.



/prey - build prey project for silent .pkg installation
/firmware_password - build firmware password setter

# Get machine enroll
# 10.13.4 and higher
sudo profiles renew -type enrollment
# Lower than 10.13.4
sudo /usr/libexec/mdmclient dep nag



## References
MDM Package Build Issues
https://blog.eriknicolasgomez.com/2017/04/05/Custom-DEP-Part-5-Dynamic-InstallApplication/

Creating Package
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
