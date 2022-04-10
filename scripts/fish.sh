#!/usr/bin/env sh

echo "Adding fish to /etc/shells"
sudo sh -c "echo \"$(brew --prefix)/bin/fish\" >> /etc/shells"
chsh -s $(brew --prefix)/bin/fish

echo "Symlinking fish config file"
ln -s $(pwd)/config/config.fish ~/.config/fish

echo "Installing fisher and plugins"
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install IlanCosman/tide@v5
fisher install jorgebucaran/autopair.fish
fisher install PatrickF1/fzf.fish
