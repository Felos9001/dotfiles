#!/bin/sh

#  Script.sh
#  
#  MacOS custom config.
#  Felos
#  

LOGGED_USER=`stat -f%Su /dev/console`
sudo su $LOGGED_USER -c 'defaults delete com.apple.dock persistent-apps'
 
dock_item() {
 
    printf '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>%s</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>', "$1"
 
}
 
Launchpad=$(dock_item /System/Applications/Launchpad.app)
Photos=$(dock_item /System/Applications/Photos.app)
Calendar=$(dock_item /System/Applications/Calendar.app)
Obsidian=$(dock_item /Applications/Obsidian.app)
VScode=$(dock_item /Applications/Visual\ Studio\ Code.app)
Safari=$(dock_item /Applications/Safari.app)
warp=$(dock_item /Applications/warp.app)
Xcode=$(dock_item /Applications/Xcode.app)
AppStore=$(dock_item /System/Applications/App\ Store.app)
PhotoBooth=$(dock_item /System/Applications/Photo\ Booth.app)
Messages=$(dock_item /System/Applications/Messages.app)
FaceTime=$(dock_item /System/Applications/FaceTime.app)
System=$(dock_item /System/Applications/System Settings.app)
 
sudo su $LOGGED_USER -c "defaults write com.apple.dock persistent-apps -array '$Launchpad' '$Photos' '$Calendar' '$Obsidian' '$VScode' '$Safari' '$warp' '$Xcode' '$AppStore' '$PhotoBooth'  '$Messages' '$FaceTime' '$System'"


defaults write com.apple.dock "orientation" -string "bottom"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv"
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"
defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "true"
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "true" && killall Finder
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "true" && killall Finder
defaults write com.apple.dock largesize -int 70

defaults write com.apple.menuextra.clock Show24Hour 0

killall Dock
