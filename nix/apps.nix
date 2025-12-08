# Group of applications that I use for work (e.g. slack, etc.)
{ pkgs, ... }:
let
  # TODO: deduplicate w/ configuration.nix
  ckb-next-custom = pkgs.ckb-next.overrideAttrs (final: prev: {
    cmakeFlags = prev.cmakeFlags ++ [ "-DUSE_DBUS_MENU=0" ];
  });
in
with pkgs; [
  ckb-next-custom
  slack
]


