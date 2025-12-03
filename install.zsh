#!/bin/zsh 

# Installs my entire development environment on a new machine.
# 
# WARNING: This program will overwrite existing files, run at your own risk!

set -euo pipefail

# checks
check_cmd_exists() {
  echo -n "checking for $1..."
  if ! command -v $1 > /dev/null; then
    echo "missing!"
    echo "error: command $1 not found!"
    exit 1
  fi
  echo "found"
}
check_cmd_exists curl
check_cmd_exists git
check_cmd_exists tar

if [[ ! -n "${XDG_BIN_HOME}" ]]; then
  echo "error: XDG_BIN_HOME should be set!"
  exit 1
fi
if [[ ! -n "${XDG_CONFIG_HOME}" ]]; then
  echo "error: XDG_CONFIG_HOME should be set!" 
  exit 1
fi

# zsh
echo -n "configuring zsh..."
cp ./zshrc "${HOME}/.zshrc"
rm -rf "${HOME}/.antidote"
git -c advice.detachedHead=false clone --branch="v1.9.10" --quiet \
  https://github.com/mattmc3/antidote.git "${HOME}/.antidote"
cp ./zsh_plugins.txt "${HOME}/.zsh_plugins.txt"
echo "done"

# tmux
echo -n "configuring tmux..."
rm -rf "${XDG_CONFIG_HOME}/tmux"
cp -r ./config/tmux "${XDG_CONFIG_HOME}/tmux"
rm -rf "${HOME}/.tmux/plugins/tpm"
git -c advice.detachedHead=false clone --depth=1 -b "v3.1.0" --quiet \
  https://github.com/tmux-plugins/tpm "${HOME}/.tmux/plugins/tpm"
rm -rf "${XDG_CONFIG_HOME}/tmux/plugins/catppuccin"
mkdir -p "${XDG_CONFIG_HOME}/tmux/plugins/catppuccin"
git -c advice.detachedHead=false clone -b "v2.1.3" --quiet \
  https://github.com/catppuccin/tmux.git "${XDG_CONFIG_HOME}/tmux/plugins/catppuccin/tmux"
echo "done"

# neovim
echo -n "installing neovim..."
pushd "${HOME}"
curl -sL https://github.com/neovim/neovim/releases/download/v0.11.5/nvim-linux-x86_64.tar.gz > neovim.tar.gz
tar -xzf neovim.tar.gz
rm -rf neovim.tar.gz
popd
echo "done"
echo -n "configuring neovim..."
rm -rf "${XDG_CONFIG_HOME}/nvim"
cp -r ./config/nvim "${XDG_CONFIG_HOME}/nvim"
echo "done"

# starship
echo -n "installing starship..."
curl -sS https://starship.rs/install.sh | sh -s -- --yes --bin-dir="${XDG_BIN_HOME}" > /dev/null
echo "done"
