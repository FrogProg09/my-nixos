#!/bin/bash

# deleting yours deafult configs that u have and copying from this repo
if test -f /etc/nixos/configuration.nix; then  # checking if configuration.nix file exists

  echo "found configuration.nix, deleting..."
  rm /etc/nixos/configuration.nix

  if [ $? -eq 0 ]; then   # checking if last executed command was successful
    echo "old configuration.nix was successfully removed"
  else
    echo "could not delete old configuration file"
    exit 1
  fi

  echo "copying configuration.nix from this repo..."
  cp ~/my-nixos/configuration.nix /etc/nixos/

  if [ $? -eq 0 ]; then   # checking if last executed command was successful
    echo "Installed configuration.nix successfully"
  else
    echo "Could not copy configuration.nix from this repo"
    exit 1
  fi
  
else

  echo "Did not find configuration.nix, copying from this repo..."
  cp ~/my-nixos/configuration.nix /etc/nixos/
  
  if [ $? -eq 0 ]; then   # checking if last executed command was successful
    echo "Installed configuration.nix successfully"
  else
    echo "Could not copy configuration.nix from this repo"
    exit 1
  fi
fi

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

echo "installing configs into ~/.config/ directory..."
cp -r ~/my-nixos/DOTFILES/.config/hypr/ ~/.config/
cp -r ~/my-nixos/DOTFILES/.config/waybar/ ~/.config/
cp -r ~/my-nixos/DOTFILES/.config/kitty/ ~/.config/
cp -r ~/my-nixos/DOTFILES/.config/lvim/ ~/.config/
cp ~/my-nixos/DOTFILES/.config/starship.toml ~/.config/

# also putting wallpapers directory to ~/Pictures/

if test -d ~/Pictures/; then
  echo "Moving wallpapers to Pictures directory"
  mv wallpapers ~/Pictures/
else
  echo "Did not find Pictures directory.. creating..."
  mkdir ~/Pictures/
  mv wallpapers ~/Pictures/
fi

# for working rofi

echo "Installing extra rofi repo..."

cd
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh

