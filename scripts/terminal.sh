#!/usr/bin/env sh

echo "Installing Terminal.app config, please set as default"
ln -fs $(pwd)/config/.gitconfig ~/.gitconfig
