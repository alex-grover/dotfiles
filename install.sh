#!/bin/bash

dotfiles=$HOME/Developer/dotfiles

# customize OS X preferences
./osx.sh

# .gitconfig
ln -fs $dotfiles/.gitconfig ~/.gitconfig

# vim
ln -fs $dotfiles/.vimrc ~/.vimrc
if [ ! -d ~/.vim_tmp ]; then
    mkdir ~/.vim_tmp
fi

# sublime text
echo "Install Sublime Text: http://www.sublimetext.com"
ln -fs ./sublime/CoffeeScript.sublime-package ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/CoffeeScript.sublime-package
ln -fs ./sublime/Theme\ -\ Soda.sublime-package ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Theme\ -\ Soda.sublime-package
ln -fs ./sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
ln -fs ./sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# zsh config files
ln -fFs $dotfiles/zsh ~/.zsh
ln -fs $dotfiles/.zshrc ~/.zshrc

# TODO: make this work
# if [ -z "$ZSH_VERSION" ]; then
    chsh -s /bin/zsh
# fi

# cloudapp command line tool
if ! gem list cloudapp_api -i > /dev/null 2>&1; then
    echo "Installing cloudapp gem."
    sudo gem install cloudapp_api
fi

ln -fs $dotfiles/cloudapp.rb /usr/local/bin/cloudapp
cp .cloudapp ~/.cloudapp
vim ~/.cloudapp
