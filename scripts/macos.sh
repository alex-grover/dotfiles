#!/usr/bin/env sh

echo "Customizing OS X preferences"

# Disable font smoothing
defaults -currentHost write -g AppleFontSmoothing -int 0

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Don't rearrange spaces
defaults write com.apple.dock mru-spaces -bool false

# Fast key repeat
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 1

# Show Safari Develop menu and hide favorites bar
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Hot corners
defaults write com.apple.dock wvous-br-corner -int 2 # Mission Control
defaults write com.apple.dock wvous-br-modifier -int 0
defaults write com.apple.dock wvous-tl-corner -int 10 # Put Display to Sleep
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tr-corner -int 4 # Desktop
defaults write com.apple.dock wvous-tr-corner -int 0
killall Dock
