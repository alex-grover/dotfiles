#!/usr/bin/env sh

echo "Symlinking git configuration files"
ln -s $(pwd)/config/.gitconfig ~/.gitconfig
