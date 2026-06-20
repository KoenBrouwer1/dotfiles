# !/bin/bash

echo "==> Installing packages"
sudo pacman -S --needed --noconfirm fastfetch
sudo pacman -S --needed --noconfirm fish
sudo pacman -S --needed --noconfirm hyprland
sudo pacman -S --needed --noconfirm kitty
sudo pacman -S --needed --noconfirm mako
sudo pacman -S --needed --noconfirm neovim
sudo pacman -S --needed --noconfirm rofi
sudo pacman -S --needed --noconfirm waybar
sudo pacman -S --needed --noconfirm zed
sudo pacman -S --needed --noconfirm stow
echo "==> Done :)"
