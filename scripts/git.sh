echo "Symlinking git configuration files"
ln -s (pwd)/.gitconfig ~/.gitconfig

echo "Installing git-open"
npm install -g git-open
