#!/usr/bin/env sh

echo "Symlinking hyper configuration files"

ln -fs $(pwd)/config/.hyper.js ~/.hyper.js
