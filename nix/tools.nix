# Group of packages that I use for development (e.g. tmux, git, nvim, zsh, etc.)
{ pkgs, ... }:
with pkgs; [
  alacritty
  antidote
  awscli2
  bat
  btop
  cargo
  clang
  curl
  dbeaver-bin
  dnsutils
  entr
  gh
  git
  glow
  gnumake
  imgcat
  jq
  just
  k9s
  kubectl
  kubernetes-helm
  mermaid-cli
  neovim
  nodejs_24
  openai
  openssl
  opentofu
  oxker
  postgresql
  postgresql.pg_config
  pulumi
  pulumiPackages.pulumi-python
  ripgrep
  shellcheck
  starship
  tmux
  tree
  unixtools.netstat
  unzip
  uv
  vivid
  wget
  wl-clipboard
  yarn
  zsh
]


