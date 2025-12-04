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
check_cmd_exists git

# zsh
echo -n "configuring zsh..."
cp ./zshrc ~/.zshrc
rm -rf ~/.antidote
git -c advice.detachedHead=false clone --branch="v1.9.10" --quiet \
  https://github.com/mattmc3/antidote.git ~/.antidote
cp ./zsh_plugins.txt ~/.zsh_plugins.txt
echo "done"

# tmux
echo -n "configuring tmux..."
rm -rf ~/.config/tmux
cp -r ./config/tmux ~/.config/tmux
echo "done"

# neovim
echo -n "configuring neovim..."
rm -rf ~/.config/nvim
cp -r ./config/nvim ~/.config/nvim
echo "done"
