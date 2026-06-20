#!/usr/bin/env bash

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

stow -t ~/.config/fastfetch fastfetch
stow -t ~/.config/fish fish
stow -t ~/.config/hyprland hyprland
stow -t ~/.config/kitty kitty
stow -t ~/.config/mako mako
stow -t ~/.config/nvim nvim
stow -t ~/.config/rofi rofi
stow -t ~/.config/waybar waybar
stow -t ~/.config/zed zed
