# !/bin/bash

echo "==> Installing packages"

sudo pacman -S --needed --noconfirm stow
sudo pacman -S --needed --noconfirm fastfetch
sudo pacman -S --needed --noconfirm fish
sudo pacman -S --needed --noconfirm hyprland
sudo pacman -S --needed --noconfirm kitty
sudo pacman -S --needed --noconfirm mako
sudo pacman -S --needed --noconfirm neovim
sudo pacman -S --needed --noconfirm rofi
sudo pacman -S --needed --noconfirm waybar
sudo pacman -S --needed --noconfirm zed
sudo pacman -S --needed --noconfirm network-manager-applet
sudo pacman -S --needed --noconfirm blueman
sudo pacman -S --needed --noconfirm grim
sudo pacman -S --needed --noconfirm wl-clipboard
sudo pacman -S --needed --noconfirm wireplumber
sudo pacman -S --needed --noconfirm brightnessctl
sudo pacman -S --needed --noconfirm playerctl
sudo pacman -S --needed --noconfirm hyprlock
sudo pacman -S --needed --noconfirm dolphin
sudo pacman -S --needed --noconfirm wofi
sudo pacman -S --needed --noconfirm flatpak
echo "==> done installing packages"

echo "If some packages didnt install or pacman couldnt find it install through flatpak :)"
