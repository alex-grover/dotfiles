#!/usr/bin/env sh

echo "Symlinking kak configuration files"
ln -fs $(pwd)/config/config.kak $(brew --prefix)/share/kak/autoload

