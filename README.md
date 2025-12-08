# dotfiles
My personal dotfiles (e.g. `.zshrc`, `.config/`, etc.) files and NixOS configuration files

## Requirements

1. [Nix](https://nixos.org/download/) package manager

## Setup

1. Clone repository into `~/.dotfiles`
```bash
nix-shell -p git --run "git clone https://github.com/maitreyakv/dotfiles .dotfiles"
```


## Usage 

### Emphemeral shell

Included is a `shell.nix` file in your home directory, that lets you run `nix-shell` to create an ephemeral shell with the tools listed in [`tools.nix`](nix/tools.nix). 

First, you must set up the config files for ZSH, NVIM, etc.
```bash
cd .dotfiles && nix-shell -p gnumake --run "make home-config"
```

Then, run
```bash 
nix-shell
```

The tools are only available in the scope of the shell; once you `exit`, they are no longer available.

### NixOS 

You can install the full NixOS setup with 
```bash 
nix-shell -p gnumake --run make
```

and then 
```bash
sudo nixos-rebuild switch && reboot
```
