#!/bin/bash

# deleting yours deafult confgs that u have
rm /etc/nixos/configuration.nix

# installing config of nixos from this repo
cp configuration.nix /etc/nixos/
