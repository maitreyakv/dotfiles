#!/bin/zsh 

# Installs my entire development environment on a new machine.
# 
# WARNING: This program will overwrite existing files, run at your own risk!

set -euo pipefail

# starship prompt
if [[ ! -n "${XDG_BIN_HOME}" ]]; then
  echo "error: XDG_BIN_HOME should be set!"
  exit 1
fi
if [[ ! -n "${XDG_CONFIG_HOME}" ]]; then
  echo "error: XDG_CONFIG_HOME should be set!" 
  exit 1
fi

# zsh
cp ./zshrc "${HOME}/.zshrc"
rm -rf "${HOME}/.antidote"
git -c advice.detachedHead=false clone --depth=1 --branch="v1.9.10" \
  https://github.com/mattmc3/antidote.git "${HOME}/.antidote"
cp ./zsh_plugins.txt "${HOME}/.zsh_plugins.txt"

# neovim
rm -rf "${XDG_CONFIG_HOME}/nvim"
cp -r ./config/nvim "${XDG_CONFIG_HOME}/nvim"
pushd "${HOME}"
curl -L https://github.com/neovim/neovim/releases/download/v0.11.5/nvim-linux-x86_64.tar.gz > neovim.tar.gz
tar -xvzf neovim.tar.gz
rm -rf neovim.tar.gz
popd

# starship
curl -sS https://starship.rs/install.sh | sh -s -- --yes --bin-dir="${XDG_BIN_HOME}"
