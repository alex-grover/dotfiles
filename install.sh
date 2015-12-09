#!/bin/bash

dotfiles=$HOME/Developer/dotfiles

# customize OS X preferences
echo "Customizing OS X preferences"
./osx.sh

# .gitconfig
echo "Symlinking git configuration"
ln -fs $dotfiles/.gitconfig ~/.gitconfig
ln -fs $dotfiles/.gitignore ~/.gitignore

# sublime text
echo "Install Sublime Text: http://www.sublimetext.com"
echo "Install packages:"
echo "  - Package Control"
echo "  - Git"
echo "  - SoDa Reloaded Dark Theme"
echo "  - Monokai Soda color scheme"
read -p "Press any key to continue"
ln -fs $dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -fs $dotfiles/Monokai\ Soda.tmTheme ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Monokai\ Soda.tmTheme

# zsh config files
echo "Symlinking zsh config files..."
if [[ -d ~/.zsh ]]; then
    rm -rf ~/.zsh
elif [[ -L ~/.zsh ]]; then
    unlink ~/.zsh
fi
ln -Fs $dotfiles/zsh/ ~/.zsh
ln -fs $dotfiles/.zshrc ~/.zshrc
chsh -s /bin/zsh
compinit

# install xcode command line tools
echo "Installing Xcode command-line tools"
xcode-select --install

# install cloudapp cli tool
echo "Installing cloudapp gem"
sudo gem install cloudapp

# install Pygments
echo "Installing pygments for `cat` syntax highlighting"
sudo easy_install Pygments

# install Homebrew
echo "Installing homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update

# install updated Git
echo "Installing updated git and git-browse-remote gem"
brew install git
sudo gem install git-browse-remote

echo "Symlinking vim config"
ln -fs $dotfiles/.vimrc ~/.vimrc
mkdir -p ~/.vim/

