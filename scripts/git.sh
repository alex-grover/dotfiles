echo "Symlinking git configuration files"
ln -s .gitconfig ~/.gitconfig
ln -s .gitignore ~/.gitignore

echo "Installing git-open"
npm install -g git-open
