let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-25.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShellNoCC {
  packages = with pkgs; [
    antidote
    curl
    git
    neovim
    starship
    tmux
    vivid
    zsh
  ];

  shellHook = "zsh";
}
