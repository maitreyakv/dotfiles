all:
	nix-shell -p stow --run "stow -v home"

test:
	nix-shell -p stow --run "stow -v --simulate home"

clean: 
	nix-shell -p stow --run "stow -v --delete home"
