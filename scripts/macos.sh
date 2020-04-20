#!/usr/bin/env sh

echo "Customizing OS X preferences"

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Fast key repeat
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 1

# Show Safari Develop menu and hide favorites bar
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari ShowFavoritesBar -bool false
