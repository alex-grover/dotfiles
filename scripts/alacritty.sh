#!/usr/bin/env sh

echo "Symlinking alacritty configuration files"

CONFIG_DIR=$HOME/.config/alacritty
mkdir -p $CONFIG_DIR
ln -fs $(pwd)/config/alacritty.toml "$CONFIG_DIR/alacritty.toml"
