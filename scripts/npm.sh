#!/usr/bin/env sh

echo "Symlinking npm configuration files"
ln -s $(pwd)/config/.npmrc ~/.npmrc

