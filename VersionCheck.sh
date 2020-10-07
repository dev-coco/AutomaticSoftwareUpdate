#!/bin/bash

ChromePath="/Applications/Google Chrome.app"
if [[ -d $ChromePath ]]; then
CheckChromeVersion=`cat /Applications/Google\ Chrome.app/Contents/Info.plist | grep -A 1 KSVersion | grep -o '[0-9.]\+'`
ChromeVersion=`echo ${CheckChromeVersion//./}`
if (($ChromeVersion >= 8604240750))  | (($ChromeVersion == 860424075))
then
echo Correct version
else
/Users/$USER/Library/Google/GoogleSoftwareUpdate/GoogleSoftwareUpdate.bundle/Contents/Resources/CheckForUpdatesNow.command
fi
fi

