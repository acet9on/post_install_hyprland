#!/bin/bash

sudo pacman -Syyu
sudo pacman -S fcitx5 fcitx5-mozc krita pinta waybar swaync curl git base-devel nemo nwg-look mpv rofi fprind libfprint swww plymouth cpio cmake meson gcc
git clone https://aur.archlinux.org/yay.git
cd ~/yay
makepkg -si
yay -Syyu
yay -S eww where-is-my-sddm-theme-git brave-bin bashmount plymouth-theme-lenovo-bgrt
echo "good job, go to config files and change whats needed"
hyprpm update
hyprpm add https://github.com/hyprwm/hyprland-plugins
hyprpm enable hyprscrolling
