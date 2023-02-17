#!/bin/sh

#  Script.sh
#  
#
#  Created by Felipe Solorzano on 2/16/23.
#  

defaults write com.apple.dock "orientation" -string "left"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv"
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"
defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "true"
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "true" && killall Finder
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "true" && killall Finder

killall Dock
