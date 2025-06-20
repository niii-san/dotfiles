#!/bin/bash

# Folder containing wallpapers
WALLPAPER_DIR="$HOME/wallpapers"

# Ensure swww is running
pgrep -x swww-daemon > /dev/null || swww-daemon & 

# Pick a random wallpaper
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' -o -iname '*.gif' \) | shuf -n 1)

# Random animation type
ANIMATIONS=("any" "simple"  "fade"  "left"  "right" "top" "bottom" "wipe" "grow"  "center" "outer" "random"  "wave")
ANIM=${ANIMATIONS[$RANDOM % ${#ANIMATIONS[@]}]}

# Random duration between 0.5s to 2s
# DURATION=$(awk -v min=0.5 -v max=2 'BEGIN{srand(); printf "%.2f\n", min + rand() * (max - min)}')
DURATION=2
FPS=165

# Set the wallpaper with animation
swww img "$WALLPAPER" --transition-type "$ANIM" --transition-duration "$DURATION" --transition-fps "$FPS"

