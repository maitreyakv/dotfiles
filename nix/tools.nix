# Group of packages that I use for development (e.g. tmux, git, nvim, zsh, etc.)
{ pkgs, ... }:
with pkgs; [
  alacritty
  antidote
  awscli2
  bat
  btop
  clang
  cmake
  curl.dev
  dbeaver-bin
  dnsutils
  entr
  gh
  git
  glow
  gnumake
  (google-cloud-sdk.withExtraComponents[google-cloud-sdk.components.gke-gcloud-auth-plugin])
  imgcat
  jdk
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
  protobuf
  pulumi
  pulumiPackages.pulumi-python
  redis
  ripgrep
  rustup
  shellcheck
  starship
  stu
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


