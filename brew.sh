#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities
brew install coreutils

# More GNU stuff
brew install moreutils
brew install binutils
brew install diffutils
brew install ed
brew install findutils
brew install gawk
brew install gnu-indent
brew install gnu-sed
brew install gnu-tar
brew install gnu-which
brew install gnutls
brew install gnupg
brew install grep
brew install gzip
brew install screen
brew install watch
brew install wdiff --with-gettext
brew install wget

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install GnuPG to enable PGP-signing commits.

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi

# Install other useful binaries.
brew install ack
brew install curl
brew install git
brew install tree
brew install ncdu
brew install mtr
brew install htop
brew install iftop
brew install irssi
brew install jq
brew install nmap
brew install pv

brew install node
brew install python
brew install python@2
brew install swiftlint
brew install carthage
brew install cocoapods
brew install yarn

brew cask install qlstephen
brew cask install fastlane

# Remove outdated versions from the cellar.
brew cleanup
