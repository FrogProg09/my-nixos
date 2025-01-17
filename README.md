# My-NixOS

## What is this?
This is my simple NixOS config which you can install easily on fresh nixOS and try this out!



## What does it include?
My configuration includes:
1. Hyprland (pretty basic configuration)
2. Gdm (as a display manager)
3. Gnome (i guess i will delete it later)

### IMPORTANT

This is MY configs, so before running .sh script you might WANT to mess with configuration.nix file!
1. You might want to backup yours configs somewhere! Because my script will erase your's configuration.nix and hardware-configuration.nix files.
2. Because of the first one, you also might want to change configuration.nix in repo:
    
    1 set up your user back on 80 line
    
    2 set up your timezone back on 28th line

    3 if you don't need gnome, you can disable it on 50th line (i also use gdm)

    4 If you need any extra packages, you also would want to add them(I have tried to keep only essentials) 

## Installation

To install this configuration you have to clone this repo with git to home directory (important):
```bash
    $ git clone https://github.com/FrogProg09/my-nixos.git
    $ cd my-nixos
```
Now if you want a nice version of nixos(with dotfiles) you have to use awesome_setup.sh:
```bash
    $ chmod +x awesome_setup.sh
    $ ./awesome_setup.sh
```
And if you want just the system, than you have to use the only_nix_setup.sh(without dotfiles):
```bash
    $ chmod +x only_nix_setup.sh 
    $ ./only_nix_setup.sh
```

And the final step is to build your system:
```nix
    # nixos-rebuild switch
```
And just like that you have simple system that you can mess with! Congrats!
