#!/bin/bash
choice=$(echo -e "  Shutdown\n  Reboot\n  Logout" | rofi -dmenu -p "" -theme ~/.config/rofi/power.rasi -location 3 -xoffset -10 -yoffset 50)

case "$choice" in
  "  Shutdown") systemctl poweroff ;;
  "  Reboot")   systemctl reboot ;;
  "  Logout")   hyprctl dispatch exit ;;
esac
