#!/bin/bash

# developer dir
mkdir ~/Developer
cd ~/Developer
git clone git@github.com:ajgrover/dotfiles.git
cd dotfiles

# customize OS X preferences
echo "Customizing OS X preferences..."
osx.sh

# .gitconfig
mv .gitconfig ~

# install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update

# install node and npm modules
brew install node
npm install -g coffee-script bower

# Sublime Text
echo "Install Sublime Text: http://www.sublimetext.com"
mv ./sublime ~/Library/Application\ Support/Sublime\ Text\ 3/

# zsh config files
mv zsh ~/.zsh
mv .zshrc ~/.zshrc
echo "Changing shell to zsh..."
chsh -s /bin/zsh

# cloudapp command line tool
echo "Installing cloudapp gem."
sudo gem install cloudapp_api
mv cloudapp.rb /usr/local/bin/cloudapp
mv .cloudapp ~/.cloudapp
vim ~/.cloudapp

# remove repo
cd ..
rm -rf dotfiles
cd
