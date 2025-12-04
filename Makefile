all:
	nix-shell -p stow --command "stow -v ."

test:
	nix-shell -p stow --command "stow -v --simulate ."

clean: 
	nix-shell -p stow --command "stow -v --delete ."
