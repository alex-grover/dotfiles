#!/bin/bash

# developer dir
mkdir ~/Developer
cd Developer
git clone git@github.com:ajgrover/dotfiles.git
cd dotfiles

# customize OS X prefs
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

# oh-my-zsh
echo "Installing oh-my-zsh..."
curl -L https://raw.github.com/ajgrover/oh-my-zsh/master/tools/install.sh | sh

# cloudapp command line tool
echo "Installing cloudapp gem."
sudo gem install cloudapp_api
mv .cloudapp ~
mv cloudapp.rb /usr/local/bin/cloudapp
echo "Please enter your cloudapp password in ~/.cloudapp"

# remove repo
cd ..
rm -rf dotfiles
