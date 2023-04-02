#!/usr/bin/env sh

touch ~/.hushlogin

echo "Adding fish to /etc/shells"
sudo sh -c "echo \"$(brew --prefix)/bin/fish\" >> /etc/shells"
chsh -s $(brew --prefix)/bin/fish

echo "Symlinking fish config file"
CONFIG_DIR=$HOME/.config/fish
mkdir -p "$CONFIG_DIR"
ln -fs $(pwd)/config/config.fish ~/.config/fish

echo "Adding brew bin dir to path"
fish -c "fish_add_path (brew --prefix)/bin"

echo "Installing fisher and plugins"
fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"
fish -c "fisher install IlanCosman/tide@v5 jorgebucaran/autopair.fish PatrickF1/fzf.fish"
