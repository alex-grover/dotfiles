#!/usr/bin/env sh

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing Homebrew packages"
read -p "Email (for App Store sign in): " email
mas signin $email
brew bundle
