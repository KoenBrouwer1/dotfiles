#!/usr/bin/env bash

echo "==> removing old config folders"
rm -rf ~/.config/fastfetch
rm -rf ~/.config/fish
rm -rf ~/.config/hyprland
rm -rf ~/.config/kitty
rm -rf ~/.config/mako
rm -rf ~/.config/nvim
rm -rf ~/.config/rofi
rm -rf ~/.config/waybar
rm -rf ~/.config/zed

cd ~/dotfiles
echo "==> using stow command"
stow fastfetch
stow fish
stow hyprland
stow kitty
stow mako
stow nvim
stow rofi
stow waybar
stow zed
