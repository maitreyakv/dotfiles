help:
  @just --list

rebuild-home: stow
  sudo env ADD_NATALIA=1 nixos-rebuild switch

rebuild-work: stow
  sudo nixos-rebuild switch

stow:
  stow --target="$HOME" home

clean:
  sudo nix-collect-garbage -d && sudo nix-store --optimise
