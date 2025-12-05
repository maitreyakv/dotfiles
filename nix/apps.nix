# Group of applications that I use for work (e.g. slack, etc.)
{ pkgs, ... }:
# let 
#   nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-25.11";
#   pkgs = import nixpkgs { config = {}; overlays = []; };
# in
with pkgs; [
  slack
]


