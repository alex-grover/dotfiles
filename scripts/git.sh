#!/usr/bin/env sh

echo "Symlinking git configuration files"
ln -fs $(pwd)/config/.gitconfig ~/.gitconfig
