#!/bin/bash

# deleting yours deafult confgs that u have

if test -f /etc/nixos/configuration.nix; then # checking if configuration.nix exists

  echo "Found configuration.nix, deleting... (づ ◕‿◕ )づ"
  sudo rm /etc/nixos/configuration.nix

  if [ $? -eq 0 ]; then  # checking if last command was successful

    echo "Old configuration was deleted successfully  ٩(◕‿◕)۶"
    echo "Installing new config to /etc/nixos/  (づ ◕‿◕ )づ"

    sudo cp ~/my-nixos/configuration.nix /etc/nixos/ # copying configuration.nix file to its place

    if [ $? -eq 0 ]; then  # checking if last command was successful
      echo "New configuration.nix file Installed successfully!  ٩(◕‿◕)۶"
    else
      echo "Could not copy configuration.nix from this repo ᕙ(⇀‸↼‶)ᕗ"
      exit 1
    fi

  else
    echo "Could not delete configuration.nix file ᕙ(⇀‸↼‶)ᕗ"
    exit 1
  fi

else 
  
  echo "Did not found configuration.nix, copying from repo... (づ ◕‿◕ )づ"
  sudo cp ~/my-nixos/configuration.nix /etc/nixos/

  if [ $? -eq 0 ]; then  # checking if last command was successful
    echo "Installed successfully!   ٩(◕‿◕)۶"
  else 
    echo "Could not copy configuration.nix ᕙ(⇀‸↼‶)ᕗ"
    exit 1
  fi
fi
