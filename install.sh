# !/bin/bash
echo "==> Installing packages"
sudo dnf install -y stow
sudo dnf install -y fastfetch
sudo dnf install -y fish
sudo dnf install -y hyprland
sudo dnf install -y kitty
sudo dnf install -y mako
sudo dnf install -y neovim
sudo dnf install -y rofi
sudo dnf install -y waybar
sudo dnf install -y network-manager-applet
sudo dnf install -y blueman
sudo dnf install -y grim
sudo dnf install -y wl-clipboard
sudo dnf install -y wireplumber
sudo dnf install -y brightnessctl
sudo dnf install -y playerctl
sudo dnf install -y hyprlock
sudo dnf install -y dolphin
sudo dnf install -y wofi
sudo dnf install -y flatpak
echo "==> done installing packages"
echo "If some packages didnt install or dnf couldnt find it install through flatpak :)"