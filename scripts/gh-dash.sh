#!/usr/bin/env sh

echo "Installing \`gh dash\`"
gh extension install dlvhdr/gh-dash
CONFIG_DIR=$HOME/.config/gh-dash
mkdir -p "$CONFIG_DIR"
ln -fs $(pwd)/config/gh-dash.yml $CONFIG_DIR/config.yml
