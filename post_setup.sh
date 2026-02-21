#!/bin/bash

echo "Step 1 - Pacman update and Install packages"
sudo pacman -Syyu
sudo pacman -S fcitx5 fcitx5-mozc 
sudo pacman -S krita waybar libreoffice-fresh
sudo pacman -S swaync curl base-devel 
sudo pacman -S nemo nwg-look mpv rofi 
sudo pacman -S fprintd libfprint 
sudo pacman -S swww plymouth 
sudo pacman -S cpio cmake meson gcc zsh
sudo pacman -S wl-clipboard hyprpolkitagent
echo "Step 2 - Setting up YAY, update and Install AUR Packages"
git clone https://aur.archlinux.org/yay.git
cd ~/yay
makepkg -si
yay -Syyu
yay -S eww where-is-my-sddm-theme-git brave-bin bashmount plymouth-theme-lenovo-bgrt pinta
echo "Step 3 - Set up your RICE - minimal hyprland config"
cp ~/post_install_hyprland/hyprland.conf ~/.config/hypr/
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
hyprctl reload
hyprpm update
hyprpm add https://github.com/hyprwm/hyprland-plugins
hyprpm enable hyprscrolling
echo "Step 4 - Decluttering and setting up shell"
sudo pacman -R dolphin wofi dunst
chsh -s $(which zsh)
cp ~/post_install_hyprland/.zshrc ~/

echo "Finished, rebooting"
reboot

