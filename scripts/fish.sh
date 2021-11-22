#!/usr/bin/env sh

echo "Adding fish to /etc/shells"
sudo sh -c 'echo "/usr/local/bin/fish" >> /etc/shells'
chsh -s /usr/local/bin/fish

echo "Symlinking fish config file"
ln -s $(pwd)/config/config.fish ~/.config/fish

echo "Installing oh-my-fish"
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install https://github.com/jorgebucaran/autopair.fish
