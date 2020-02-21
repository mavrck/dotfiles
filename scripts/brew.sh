#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget`
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install other useful binaries.
brew install ack
brew install ansible
brew install argon2
brew install aspell
brew install bat
brew install brotli
brew install curl-openssl
brew install ffmpeg
brew install flac
brew install git
brew install git-lfs
brew install gs
brew install htop
brew install imagemagick
brew install mas
brew install nmap
brew install node
brew install rename
brew install rlwrap
brew install rsync
brew install rename
brew install ssh-copy-id
brew install tmux
brew install tree
brew install whois
brew install wget

# Installs Casks
brew tap homebrew/cask-cask

## Apps I use
brew cask install 1password
#brew cask install alfred
brew cask install authy
brew cask install backblaze
brew cask install bartender
brew cask install basecamp
brew cask install carbon-copy-cloner
brew cask install dash
brew cask install discord
brew cask install dropbox
brew cask install droplr
brew cask install duet
brew cask install fantastical
brew cask install firefox
brew cask install homebrew/cask-versions/firefox-nightly # Nightly
brew cask install flux
brew cask install github
brew cask install google-chrome
brew cask install homebrew/cask-versions/google-chrome-canary # Chrome Canary
brew cask install grammarly
brew cask install grandperspective
brew cask install handbrake
brew cask install imagealpha
brew cask install imageoptim
brew cask install insomnia
brew cask install iterm2
brew cask install jetbrains-toolbox
brew cask install kaleidoscope
brew cask install lastpass
brew cask install microsoft-edge
brew cask install microsoft-excel
brew cask install microsoft-powerpoint
brew cask install microsoft-word
brew cask install moom
brew cask install navicat-premium-essentials
brew cask install ngrok
brew cask install omnigraffle
brew cask install pandora
brew cask install plex
brew cask install pocket-casts
brew cask install purevpn
brew cask install rescuetime
brew cask install resilio-sync
brew cask install sequel-pro
brew cask install sketch
brew cask install skitch
brew cask install slack
brew cask install spotify
brew cask install sqleditor
brew cask install stoplight-studio
# brew cask install tableplus
# brew cask install tower
brew cask install transmission
brew cask install transmit
brew cask install transmit-disk
brew cask install tripmode
brew cask install tuple
brew cask install vagrant
brew cask install veracrypt
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install vlc
brew cask install webstorm

# Remove outdated versions from the cellar.
brew cleanup
