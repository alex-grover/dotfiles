#!/usr/bin/env sh

echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to path for the rest of the installation
# TODO: this doesn't work
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Installing Homebrew packages"
brew bundle
