#!/usr/bin/env bash

set -Eeuo pipefail

default_python_version="3.7.13"
python_versions=(
  "$default_python_version"
)
python_packages=(
  poetry
)

for version in "${python_versions[@]}"; do
  pyenv install -s "$version"
done

pyenv global "$default_python_version"

if ! command -v pip >/dev/null 2>&1; then
  if [[ -d "${HOME}/.pyenv/shims" ]]; then
    export PATH="${HOME}/.pyenv/shims:${PATH}"
  fi
fi

#pip3 install "${python_packages[@]}"
pyenv rehash || true