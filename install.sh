#!/bin/bash

# customize OS X preferences
echo "Customizing OS X preferences..."
osx.sh

# .gitconfig
mv .gitconfig ~/.gitconfig

# vim
mv .vimrc ~/.vimrc
mkdir ~/.vim_tmp

# sublime text
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
