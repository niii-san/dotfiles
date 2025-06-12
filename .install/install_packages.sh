#!/bin/bash


echo "Install Packages? (y/n)........"
read -r user_input

user_input="${user_input//[[:space:]]/}"

# Install Packages
packages=("hyprland" "hyprpaper" "hypridle" "hyprlock" "thunar" "gvfs" "thunar-archive-plugin" "thunar-media-tags-plugin" 
    "btop" "dunst" "fastfetch" "kitty" "neovim" "rofi-wayland" "tmux" "waybar" "starship" "yazi" "cava" "pavucontrol" "tumbler" "ffmpegthumbnailer" "grim" "slurp" "swappy" "imagemagick")

if [[ "${user_input,,}" == "y" ]]; then
    echo "Installing packages........"
    sudo pacman -S "${packages[@]}"
    sleep 1
    echo "Packages installed!!"
else
    echo "Cancelled Packages Installation..."
fi

