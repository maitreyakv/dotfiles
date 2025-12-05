# My shared ZSH and system configuration.
#
# Machine specific configuration is in ~/.zshenv

# ls, tree, etc. coloring
export LS_COLORS="$(vivid generate catppuccin-mocha)"

# History file for zsh
HISTFILE="${HOME}/.zsh_history"

# How many commands to store in history
HISTSIZE=10000
SAVEHIST=10000

# Share history in every terminal session
setopt SHARE_HISTORY

# enables home/end key navigation
bindkey '\e[1~'   beginning-of-line  # Linux console
bindkey '\e[H'    beginning-of-line  # xterm
bindkey '\eOH'    beginning-of-line  # gnome-terminal
bindkey '\e[2~'   overwrite-mode     # Linux console, xterm, gnome-terminal
bindkey '\e[3~'   delete-char        # Linux console, xterm, gnome-terminal
bindkey '\e[4~'   end-of-line        # Linux console
bindkey '\e[F'    end-of-line        # xterm
bindkey '\eOF'    end-of-line        # gnome-terminal

# initialize antidote plugin manager
# TODO: Figure out how to infer this path
ANTIDOTE_ZSH_PATH="/nix/store/b10clyb3w8k7d57w382qffr4xl2h8gvk-antidote-1.9.10/share/antidote/antidote.zsh"
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
