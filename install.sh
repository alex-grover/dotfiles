#!/bin/bash

# developer dir
mkdir ~/Developer

# install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update

# install node and npm modules
brew install node
npm install -g coffee-script bower

# Sublime Text
echo "Install Sublime Text: http://www.sublimetext.com"
echo "Then run ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl"
mv ./sublime ~/Library/Application\ Support/Sublime\ Text\ 3/

# oh-my-zsh
echo "Installing oh-my-zsh..."
curl -L https://raw.github.com/ajgrover/oh-my-zsh/master/tools/install.sh | sh