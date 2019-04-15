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
OSX pkg build
https://matthew-brett.github.io/docosx/flat_packages.html

Checking MDM enrollment
https://derflounder.wordpress.com/2018/03/30/detecting-user-approved-mdm-using-the-profiles-command-line-tool-on-macos-10-13-4/
