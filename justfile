help:
  @just --list

rebuild-home: stow
  sudo env ADD_NATALIA=1 nixos-rebuild switch

rebuild-work: stow
  sudo nixos-rebuild switch

# TODO: Move this to nix
zeroclaw:
  curl -fsSL https://github.com/zeroclaw-labs/zeroclaw/releases/download/v0.8.5/install.sh | sh

stow:
  stow --target="$HOME" home

clean:
  sudo nix-collect-garbage -d \
    && nix-collect-garbage -d \
    && sudo nix-store --optimise
