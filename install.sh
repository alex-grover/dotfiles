dotfiles=$HOME/Developer/dotfiles

# customize OS X preferences
./osx.sh

# .gitconfig
ln -fs $dotfiles/.gitconfig ~/.gitconfig

# vim
ln -fs $dotfiles/.vimrc ~/.vimrc

# sublime text
echo "Install Sublime Text: http://www.sublimetext.com"
ln -fs $dotfiles/sublime/CoffeeScript.sublime-package ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/CoffeeScript.sublime-package
ln -fs $dotfiles/sublime/Theme\ -\ Soda.sublime-package ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Theme\ -\ Soda.sublime-package
ln -fs $dotfiles/sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
ln -fs $dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# zsh config files
if [[ -d ~/.zsh ]]; then
    rm -rf ~/.zsh
elif [[ -L ~/.zsh ]]; then
    unlink ~/.zsh
fi
ln -Fs $dotfiles/zsh/ ~/.zsh
ln -fs $dotfiles/.zshrc ~/.zshrc
chsh -s /bin/zsh

# install xcode command line tools
xcode-select --install

# install cloudapp cli tool
sudo gem install cloudapp

# install Pygments
echo "Installing Pygments for `cat` syntax highlighting"
sudo easy_install Pygments

# install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update

# install node and npm modules
brew install node
npm install -g coffee-script bower

# update vim
brew install vim
