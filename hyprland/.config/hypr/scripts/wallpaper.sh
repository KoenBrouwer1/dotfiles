#!/bin/bash
swww-daemon &
sleep 0.5

WALL=$(find ~/walls -type f \( -name "*.jpg" -o -name "*.png" \) | \
    awk -F'/' '{print $NF}' | sed 's/\.[^.]*$//' | \
    rofi -dmenu -i -p "" -theme ~/.config/rofi/wallpaper.rasi | \
    xargs -I{} find ~/walls -name "{}.*" | head -1)

THEME=$(basename "$WALL" | cut -d. -f1)

echo "THEME: $THEME" | tee /tmp/wall-debug.log
echo "KITTY: $KITTY_THEME" >> /tmp/wall-debug.log

swww img "$WALL" --transition-type fade --transition-duration 1

# waybar
WAYBAR_DIR="$HOME/.config/waybar/themes/$THEME"
if [ -d "$WAYBAR_DIR" ]; then
    pkill waybar
    waybar -c "$WAYBAR_DIR/config.jsonc" -s "$WAYBAR_DIR/style.css" &
else
    pkill waybar && waybar &
fi

# in wallpaper.sh, replace kitty block with:
KITTY_THEME="$HOME/.config/kitty/themes/$THEME/kitty.conf"
if [ -f "$KITTY_THEME" ]; then
    ln -sf "$KITTY_THEME" "$HOME/.config/kitty/current-theme.conf"
kill -SIGUSR1 $(pgrep kitty) 2>/dev/null
else
    ln -sf "$HOME/.config/kitty/themes/cat/kitty.conf" "$HOME/.config/kitty/current-theme.conf"
kill -SIGUSR1 $(pgrep kitty) 2>/dev/null
fi
# hyprland
HYPR_THEME="$HOME/.config/hypr/themes/$THEME/$THEME.conf"
echo "HYPR_THEME: $HYPR_THEME" >> /tmp/wall-debug.log
echo "EXISTS: $([ -f "$HYPR_THEME" ] && echo yes || echo no)" >> /tmp/wall-debug.log
if [ -f "$HYPR_THEME" ]; then
    sed -i "s|^source = .*themes/.*|source = $HYPR_THEME|" ~/.config/hypr/hyprland.conf
    echo "SED done" >> /tmp/wall-debug.log
    hyprctl reload >> /tmp/wall-debug.log 2>&1
    echo "RELOAD done" >> /tmp/wall-debug.log
fi