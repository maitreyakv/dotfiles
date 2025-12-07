all: home-config nixos-config

home-config:
	nix-shell -p stow --run "stow -v home"

nixos-config:
	sudo nix-shell -p stow --run "stow -v -d etc/nixos/ -t /etc/nixos/ ."
