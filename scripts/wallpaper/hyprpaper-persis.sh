#!/bin/bash

# Path to the hyprpaper configuration file
HYPRPAPER_CONF="$HOME/.config/hypr/hyprpaper.conf"

# New wallpaper file 
NEW_WALLPAPER="$1"

# Check if the new wallpaper file exists
if [[ -f "$NEW_WALLPAPER" ]]; then
    # Update only the preload and wallpaper lines in the configuration file
    sed -i "s|^preload = .*|preload = $NEW_WALLPAPER|" "$HYPRPAPER_CONF"
    sed -i "s|^wallpaper = ,.*|wallpaper = ,$NEW_WALLPAPER|" "$HYPRPAPER_CONF"

    echo "Updated preload and wallpaper to: $NEW_WALLPAPER"
else
    echo "Error: Wallpaper file does not exist: $NEW_WALLPAPER" >&2
fi

