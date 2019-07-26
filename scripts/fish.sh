echo "Adding fish to /etc/shells"
echo "/usr/local/bin/fish" >> /etc/shells
chsh -s /usr/local/bin/fish

echo "Symlinking fish config file"
ln -s (pwd)/config.fish ~/.config/fish

echo "Installing oh-my-fish"
curl -L https://get.oh-my.fish | fish

echo "Installing omf packages"
omf install grc
