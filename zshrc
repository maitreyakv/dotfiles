# My shared ZSH and system configuration.
#
# Machine specific configuration is in ~/.zshenv

# initialize antidote plugin manager
ANTIDOTE_ZSH_PATH="${HOME}/.antidote/antidote.zsh"
if [[ ! -f "${ANTIDOTE_ZSH_PATH}" ]]; then
  echo "error: antidote not found at ${ANTIDOTE_ZSH_PATH}!"
  return
fi
source "${ANTIDOTE_ZSH_PATH}"
antidote load

# starship prompt
eval "$(starship init zsh)"

# neovim
export EDITOR="${HOME}/.neovim/bin/nvim"
alias vim="${EDITOR}"
