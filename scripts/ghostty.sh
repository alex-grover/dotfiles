#!/usr/bin/env sh

echo "Symlinking Ghostty files"
CONFIG_DIR=$HOME/.config/ghostty
mkdir -p "$CONFIG_DIR"
ln -fs $(pwd)/config/ghostty $CONFIG_DIR/config
