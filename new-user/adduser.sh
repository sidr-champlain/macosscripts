#!/usr/bin/env zsh

# The below commands will create a user called FileShare and give it admin level status

sudo dscl . -create /Users/fileshare

sudo dscl . -create /Users/fileshare UserShell /bin/zsh

sudo dscl . -create /Users/fileshare RealName "File Share Account"

sudo dscl . -create /Users/fileshare UniqueID "1010"

sudo dscl . -create /Users/fileshare PrimaryGroupID 80

sudo dscl . -create /Users/fileshare NFSHomeDirectory /Users/fileshare

