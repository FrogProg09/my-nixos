#!/bin/bash

# deleting yours deafult configs that u have
rm /etc/nixos/configuration.nix

# installing config of nixos from this repo
cp ~/my-nixos/configuration.nix /etc/nixos/

#deleting deafult configs of programs in case they exist
if test -d ~/.config/hypr/; then
  echo "~/.config/hypr/ directory exists, deleting..."
  rm -r ~/.config/hypr/
fi
if test -d ~/.config/waybar/; then
  echo "~/.config/waybar/ directory exists, deleting..."
  rm -r ~/.config/waybar/
fi
if test -d ~/.config/kitty/; then
  echo "~/.config/kitty/ directory exists, deleting..."
  rm -r ~/.config/kitty/
fi
if test -d ~/.config/lvim/; then
  echo "~/.config/lvim/ directory exists, deleting..."
  rm -r ~/.config/lvim/
fi
if test -f ~/.config/starship.toml; then
  echo "~/.config/starship.toml file exists, deleting..."
  rm ~/.config/starship.toml
fi

# installing configs of programs from this repo

cp -r ~/my-nixos/DOTFILES/.config/hypr/ ~/.config/
cp -r ~/my-nixos/DOTFILES/.config/waybar/ ~/.config/
cp -r ~/my-nixos/DOTFILES/.config/kitty/ ~/.config/
cp -r ~/my-nixos/DOTFILES/.config/lvim/ ~/.config/
cp ~/my-nixos/DOTFILES/.config/starship.toml ~/.config/

# also putting wallpapers directory to ~/Pictures/

mv wallpapers ~/Pictures/

# for working rofi

cd
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh

