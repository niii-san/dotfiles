#!/bin/bash

hyprpaper_config_file="$HOME/.config/hypr/hyprpaper.conf"

wallpapers_dir="$HOME/Wallpapers"

# hiddn file to store the current wallpaper name
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

# Set to -1 if the current wallpaper is not found or file doesn't exist (start from first)
current_index=${current_index:- -1}

# Calculate the next wallpaper index (loop back to 0 if at the end)
next_index=$(( (current_index + 1) % wallpaper_count ))
next_wallpaper="${wallpapers[$next_index]}"

# Update hyprpaper.conf 
sed -i "s|^preload = .*|preload = $next_wallpaper|" "$hyprpaper_config_file"
sed -i "s|^wallpaper = .*|wallpaper = ,$next_wallpaper|" "$hyprpaper_config_file"

# Save the current wallpaper to the hidden file
echo "$next_wallpaper" > "$current_wallpaper_file"


dunstify "Wallpaper changed (Forward)" "$(basename "$next_wallpaper")" -u low



# Reload Hyprpaper 
pkill hyprpaper 
sleep 1
hyprpaper &
