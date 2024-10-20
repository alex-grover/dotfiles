#!/usr/bin/env sh

echo "Symlinking zed configuration files"
CONFIG_DIR=$HOME/.config/zed
mkdir -p "$CONFIG_DIR"
ln -fs $(pwd)/config/zed.json $CONFIG_DIR/settings.json

