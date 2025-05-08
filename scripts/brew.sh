#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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
brew install argon2
brew install aspell
brew install bat
brew install brotli
brew install btop
brew install curl-openssl
brew install ffmpeg
brew install flac
brew install gh
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
brew install mkcert
brew install nss

# Installs Casks
#brew tap homebrew/cask-cask

## Apps I use
brew install --cask 1password
brew install --cask backblaze
#brew install --cask bartender
brew install --cask firefox
brew install --cask homebrew/cask-versions/firefox-nightly # Nightly
brew install --cask github
brew install --cask google-chrome
brew install --cask homebrew/cask-versions/google-chrome-canary # Chrome Canary
brew install --cask grammarly
brew install --cask grandperspective
brew install --cask handbrake
brew install --cask imagealpha
brew install --cask imageoptim
brew install --cask iterm2
brew install --cask jetbrains-toolbox
brew install --cask kaleidoscope
#brew install --cask microsoft-edge
#brew install --cask microsoft-excel
#brew install --cask microsoft-powerpoint
#brew install --cask microsoft-word
brew install --cask moom
brew install --cask navicat-premium-essentials
brew install --cask ngrok
#brew install --cask omnigraffle
#brew install --cask pandora
#brew install --cask plex
#brew install --cask pocket-casts
brew install --cask purevpn
brew install --cask rescuetime
#brew install --cask resilio-sync
#brew install --cask skitch
brew install --cask slack
brew install --cask spotify
brew install --cask sqleditor
brew install --cask stoplight-studio
#brew install --cask tableplus
#brew install --cask tower
brew install --cask transmission
brew install --cask transmit
brew install --cask transmit-disk
#brew install --cask tripmode
#brew install --cask tuple
brew install --cask vagrant
brew install --cask veracrypt
brew install --cask virtualbox
brew install --cask visual-studio-code
brew install --cask vlc
#brew install --cask webstorm
brew install --cask zoom

# Remove outdated versions from the cellar.
brew cleanup
