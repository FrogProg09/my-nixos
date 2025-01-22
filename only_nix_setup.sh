#!/bin/bash

# deleting yours deafult confgs that u have

if test -f /etc/nixos/configuration.nix; then # checking if configuration.nix exists

  echo "Found configuration.nix, deleting..."
  rm /etc/nixos/configuration.nix

  if [ $? -eq 0 ]; then  # checking if last command was successful

    echo "Old configuration was deleted successfully"
    echo "Installing new config to /etc/nixos/"

    cp ~/my-nixos/configuration.nix /etc/nixos/ # copying configuration.nix file to its place

    if [ $? -eq 0 ]; then  # checking if last command was successful
      echo "New configuration.nix file Installed successfully!"
    else
      echo "Could not copy configuration.nix from this repo"
      exit 1
    fi

  else
    echo "Could not delete configuration.nix file"
    exit 1
  fi

else 
  
  echo "Did not found configuration.nix, copying from repo..."
  cp ~/my-nixos/configuration.nix /etc/nixos/

  if [ $? -eq 0 ]; then  # checking if last command was successful
    echo "Installed successfully!"
  else 
    echo "Could not copy configuration.nix"
    exit 1
  fi
fi
