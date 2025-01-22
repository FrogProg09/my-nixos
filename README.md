# My-NixOS

## What is this?
This is my simple NixOS config which you can install easily on fresh nixOS and try this out!

![Image](https://github.com/user-attachments/assets/e71be755-25be-45cd-adeb-ea288ca4510e)
![Image](https://github.com/user-attachments/assets/13b306a0-8767-4852-b117-715c4192b78c)
![Image](https://github.com/user-attachments/assets/43fbb602-58ab-4cab-a376-aef817d79ce9)

## What does it include?
My configuration includes:
1. Hyprland (pretty basic configuration)
2. Gdm (as a display manager)
3. Gnome (i guess i will delete it later)
4. Zsh (Z-shell)
5. Lunarvim (Fork of neovim)

### IMPORTANT

So, I am still a total newbie at nixos, so i might be doing everything in a very wrong or very simple way, so that is why this repo is still in progress!

This is MY configs, so before running .sh script you might WANT to mess with configuration.nix file!
1. You might want to backup your configs somewhere! Because my script will erase your's configuration.nix file and some configs from ~/.config/ directory.
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
After all of it you wanna reboot:
```bash
    $ reboot
```

Than in gdm choose hyprland, and you are good to go!

And just like that you have simple system that you can mess with! Congrats!

## Credits
For hyprland inspiration was taken from fedora-hyprland by @Ja.KooLit repo: https://github.com/JaKooLit/Fedora-Hyprland
wallpapers and waybar config were taken from the same place, thank you very much!

For app launcher I used rofi-wayland with rofi by @adi1090x repo: https://github.com/adi1090x/rofi huge colletion, thank you very much!
