#!/bin/bash

# deleting yours deafult configs that u have
rm /etc/nixos/configuration.nix
rm /etc/nixos/hardware-configuration.nix

# installing config of nixos from this repo
cp configuration.nix /etc/nixos/
cp hardware-configuration.nix etc/nixos/

#deleting deafult configs of programs in case they exist
rm -r ~/.config/hypr/
rm -r ~/.config/waybar/
rm -r ~/.config/kitty/
rm -r ~/.config/lvim/
rm ~/.config/starship.toml

# installing configs of programs from this repo

cp -r ~/my-nixos/DOTFILES/.config/hypr/ ~/.config/
cp -r ~/my-nixos/DOTFILES/.config/waybar/ ~/.config/
cp -r ~/my-nixos/DOTFILES/.config/kitty/ ~/.config/
cp -r ~/my-nixos/DOTFILES/.config/lvim/ ~/.config/
cp ~/my-nixos/DOTFILES/.config/starship.toml ~/.config/

# also putting wallpapers directory to ~/Pictures/

mv wallpapers ~/Pictures/
