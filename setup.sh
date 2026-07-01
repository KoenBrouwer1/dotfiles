#!/usr/bin/env bash

echo "==> removing old dotfiles"
rm -rf ~/.config/fastfetch
rm -rf ~/.config/fish
rm -rf ~/.config/hypr
rm -rf ~/.config/kitty
rm -rf ~/.config/mako
rm -rf ~/.config/nvim
rm -rf ~/.config/rofi
rm -rf ~/.config/waybar
rm -rf ~/.config/zed

echo "==> copying configs"
cp -r ~/dotfiles/fastfetch/.config/fastfetch ~/.config/fastfetch
cp -r ~/dotfiles/fish/.config/fish ~/.config/fish
cp -r ~/dotfiles/hyprland/.config/hypr ~/.config/hypr
cp -r ~/dotfiles/kitty/.config/kitty ~/.config/kitty
cp -r ~/dotfiles/mako/.config/mako ~/.config/mako
cp -r ~/dotfiles/nvim/.config/nvim ~/.config/nvim
cp -r ~/dotfiles/rofi/.config/rofi ~/.config/rofi
cp -r ~/dotfiles/waybar/.config/waybar ~/.config/waybar
cp -r ~/dotfiles/zed/.config/zed ~/.config/zed
mkdir -p ~/wallsdd
