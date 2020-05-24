#!/bin/bash

cd /Users/$USER/Downloads && curl https://raw.githubusercontent.com/dev-coco/AutomaticSoftwareUpdate/master/VersionCheck.sh -o VersionCheck.sh && chmod +x /Users/$USER/Downloads/VersionCheck.sh && /Users/$USER/Downloads/VersionCheck.sh && rm -rf /Users/$USER/Downloads/VersionCheck.sh && killall -9 Terminal
