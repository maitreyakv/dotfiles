all: home-config nixos-config

home-config:
	nix-shell -p stow --run "stow -v home"

nixos-config:
	sudo mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.bak
	sudo nix-shell -p stow --run "stow -v -d etc/nixos/ -t /etc/nixos/ ."
