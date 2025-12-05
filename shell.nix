let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-25.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
    
  tools = import ./tools.nix;
in
pkgs.mkShellNoCC {
  packages = tools ++ [];

  shellHook = "zsh";
}
