let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-25.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShellNoCC {
  packages = with pkgs; [
    antidote
    cargo
    clang
    curl
    git
    neovim
    nodejs_24
    starship
    tmux
    unzip
    vivid
    zsh
  ];

  shellHook = "zsh";
}
