#!/usr/bin/env sh

echo "Installing \`gh dash\`"
gh extension install dlvhdr/gh-dash
CONFIG_DIR=$HOME/Library/Application\ Support/gh-dash
mkdir -p "$CONFIG_DIR"
ln -s $(pwd)/config/gh-dash.yml "$CONFIG_DIR/config.yml"
