# Group of packages that I use for development (e.g. tmux, git, nvim, zsh, etc.)
let 
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-25.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
with pkgs; [
  antidote
  cargo
  clang
  curl
  git
  gnumake
  neovim
  nodejs_24
  starship
  tmux
  unzip
  vivid
  zsh
]


