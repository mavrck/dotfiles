#!/usr/bin/env bash

# Base Requirements
source scripts/base.sh

# Preferences
#   - https://github.com/atomantic/dotfiles/blob/master/install.sh
source scripts/mac-preferences.sh

# Install apps and binaries with Brew
source scripts/brew.sh

# Install apps from the Apple App Store
source scripts/app-store.sh

# PHP Composer
source scripts/composer.sh

# Set npm permissions and install global binaries
source scripts/npm.sh

# Other CLI tools
source scripts/cli.sh

# Create symlinks for dotfiles
# source scripts/link-dotfiles.sh

git config --global user.name "Bill Condo"
git config --global user.email "bill@billcondo.com"
