#!/bin/bash

hyprpaper_config_file="$HOME/.config/hypr/hyprpaper.conf"
wallpapers_dir="$HOME/Wallpapers"
 
# hidden file to store the current wallpaper name
current_wallpaper_file="$HOME/.config/hypr/.current_wallpaper"

# list of all wallpapers in the directory, sorted alphabetically
wallpapers=("$wallpapers_dir"/*)
wallpaper_count=${#wallpapers[@]}

# Find the index of the current wallpaper
if [[ -f $current_wallpaper_file ]]; then
    current_wallpaper=$(cat "$current_wallpaper_file")
    for i in "${!wallpapers[@]}"; do
        if [[ "${wallpapers[$i]}" == "$current_wallpaper" ]]; then
            current_index=$i
            break
        fi
    done
fi

# Set to the last wallpaper if the current wallpaper is not found or file doesn't exist (start from last)
current_index=${current_index:- 0}

# Calculate the previous wallpaper index (loop back to the last if at the beginning)
previous_index=$(( (current_index - 1 + wallpaper_count) % wallpaper_count ))
previous_wallpaper="${wallpapers[$previous_index]}"

# Update hyprpaper.conf with the new wallpaper path
sed -i "s|^preload = .*|preload = $previous_wallpaper|" "$hyprpaper_config_file"
sed -i "s|^wallpaper = .*|wallpaper = ,$previous_wallpaper|" "$hyprpaper_config_file"

# Save the current wallpaper to the hidden file
echo "$previous_wallpaper" > "$current_wallpaper_file"


dunstify "Wallpaper changed (Backward)" "$(basename "$previous_wallpaper")" -u low


# Reload Hyprpaper to apply changes
pkill hyprpaper
sleep 1
hyprpaper &

