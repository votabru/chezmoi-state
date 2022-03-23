#!/usr/bin/env bash

if [ "$(uname)" != "Darwin" ]; then
  echo "MacOS only. Bye"
  exit 1
fi

echo "Ensuring Homebrew is installed and updated"

if ! command -v brew > /dev/null; then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew update
echo "Homebrew install - Done"

echo "Ensuring chezmoi is installed and updated"

if ! command -v chezmoi > /dev/null; then
  brew install chezmoi
fi
echo "chezmoi install - Done"

echo "chezmoi init and apply, set remote"
chezmoi init --apply https://github.com/votabru/chezmoi-state.git
chezmoi git -- remote set-url origin --push git@github.com:/votabru/chezmoi-state.git