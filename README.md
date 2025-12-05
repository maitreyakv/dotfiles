# dotfiles
My personal configuration files

## Requirements

1. [Nix](https://nixos.org/download/) package manager

## Setup

1. Bootstrap NixOS config 
```bash
nix-shell -p git --command "git clone https://github.com/maitreyakv/dotfiles .dotfiles"
```

2. Setup config files 
```bash
cd .dotfiles && make
```

## Usage

```bash
nix-shell
```
