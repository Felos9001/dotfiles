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
VScode=$(dock_item /Applications/vscode.app)
warp=$(dock_item /Applications/warp.app)
Xcode=$(dock_item /Applications/Xcode.app)
AppStore=$(dock_item /Applications/App\ Store.app)
PhotoBooth=$(dock_item /Applications/Photo\ Booth.app)
OperaGX=$(dock_item /Applications/Opera\ GX.app)
Messages=$(dock_item /Applications/Messages.app)
FaceTime=$(dock_item /Applications/FaceTime.app)
SystemPreferences=$(dock_item /System/Applications/System\ Preferences.app)
 
sudo su $LOGGED_USER -c "defaults write com.apple.dock persistent-apps -array '$Launchpad' '$Photos' '$Calendar' '$Obsidian' '$VScode' '$warp' '$Xcode' '$AppStore' '$PhotoBooth' '$OperaGX' '$Messages' '$Facetime' '$SystemPreferences'"


defaults write com.apple.dock "orientation" -string "bottom"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv"
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"
defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "true"
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "true" && killall Finder
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "true" && killall Finder
defaults write com.apple.menuextra.clock Show24Hour 0

killall Dock
