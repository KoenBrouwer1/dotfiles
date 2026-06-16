#!/bin/bash
bluetoothctl devices | awk '{$1=""; $2=""; print $0}' | sed 's/^ *//' > /tmp/bt_devices

choice=$(echo -e "󰂯  Scan for devices\n󰂲  Turn off\n$(cat /tmp/bt_devices)" | rofi -dmenu -p "󰂯  bluetooth" -theme ~/.config/rofi/wifi.rasi)

case "$choice" in
  *"Scan"*)    kitty --class floating-popup bluetoothctl ;;
  *"Turn off"*) bluetoothctl power off ;;
  *)
    device=$(bluetoothctl devices | grep "$choice" | awk '{print $2}')
    [ -n "$device" ] && bluetoothctl connect "$device"
    ;;
esac
