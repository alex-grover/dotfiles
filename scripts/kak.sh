#!/usr/bin/env sh

echo "Symlinking kak configuration files"
ln -s $(pwd)/config/config.kak $(brew --prefix)/share/kak/autoload

