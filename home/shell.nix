let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-25.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
    
  tools = import ../nix/tools.nix;
in
pkgs.mkShellNoCC {
  packages = tools ++ [];

  shellHook = "zsh";
}
