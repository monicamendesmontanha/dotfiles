#!/bin/bash

# Creates symbolic link
rm -rf ~/Library/Application\ Support/Code/User/settings.json || true
ln -s `pwd`/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# Install extensions
`pwd`/vscode/install-extensions.sh
