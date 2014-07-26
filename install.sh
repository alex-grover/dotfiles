#!/bin/bash

# customize OS X preferences
./osx.sh

# .gitconfig
ln -fs ./.gitconfig ~/.gitconfig

# vim
ln -fs .vimrc ~/.vimrc
mkdir ~/.vim_tmp

# sublime text
echo "Install Sublime Text: http://www.sublimetext.com"
ln -fs "./sublime/CoffeeScript.sublime-package" "~/Library/Application Support/Sublime Text 3/Installed Packages/CoffeeScript.sublime-package"
ln -fs "./sublime/Theme - Soda.sublime-package" "~/Library/Application Support/Sublime Text 3/Installed Packages/Theme - Soda.sublime-package"
ln -fs "./sublime/Default (OSX).sublime-keymap" "~/Library/Application Support/Sublime Text 3/Packages/User/Default (OSX).sublime-keymap"
ln -fs "./sublime/Preferences.sublime-settings" "~/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

# zsh config files
ln -fFs ./zsh ~/.zsh
ln -fs ./.zshrc ~/.zshrc
echo "Changing shell to zsh..."
chsh -s /bin/zsh

# cloudapp command line tool
echo "Installing cloudapp gem."
sudo gem install cloudapp_api
ln -fs ./cloudapp.rb /usr/local/bin/cloudapp
ln -fs ./.cloudapp ~/.cloudapp
vim ./.cloudapp
