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
export EDITOR="nvim"
alias vim="nvim"

# Node Version Manager (NodeJs)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
