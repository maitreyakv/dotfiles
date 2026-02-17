help:
  @just --list

rebuild-home:
  sudo env ADD_NATALIA=1 nixos-rebuild switch

rebuild-work:
  sudo nixos-rebuild switch
