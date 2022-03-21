#!/usr/bin/env bash

################################################################################
# Make sure we're on a Mac before continuing
################################################################################
if [ "$(uname)" != "Darwin" ]; then
  bootstrap_error "Oops, it looks like you're using a non-Darwin system. This script
only supports macOS. Exiting..."
fi

################################################################################
# Homebrew
################################################################################
echo "Ensuring Homebrew is installed and updated"

if ! command -v brew > /dev/null; then
  bootstrap_echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  export PATH="/usr/local/bin:$PATH"
fi

brew update
echo "Homebrew install - Done"
################################################################################


################################################################################
# chezmoi
################################################################################
echo "Ensuring chezmoi is installed and updated"

if ! command -v chezmoi > dev/null; then
  brew install chezmoi
fi
echo "chezmoi install - Done"
################################################################################

chezmoi init --apply https://github.com/votabru/chezmoi-state.git
chezmoi git -- remote set-url origin --push git@github.com:/votabru/chezmoi-state.git