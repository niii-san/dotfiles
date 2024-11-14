#!/bin/bash


echo "Loading Symbolic Links..."

ln -s ~/dotfiles/btop ~/.config/btop
ln -s ~/dotfiles/cava ~/.config/cava
ln -s ~/dotfiles/dunst ~/.config/dunst
ln -s ~/dotfiles/fastfetch ~/.config/fastfetch
ln -s ~/dotfiles/hypr ~/.config/hypr
ln -s ~/dotfiles/kitty ~/.config/kitty
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/rofi ~/.config/rofi  # rofi-wayland
ln -s ~/dotfiles/tmux ~/.config/tmux
ln -s ~/dotfiles/waybar ~/.config/waybar
ln -s ~/dotfiles/wlogout ~/.config/wlogout  # yay package
ln -s ~/dotfiles/starship.toml ~/.config/starship.toml


ln -s ~/dotfiles/scripts ~/.config/scripts # custom scripts



# If .bashrc already exists then removing it
if [ -f "$HOME/.bashrc" ]; then
    rm "$HOME/.bashrc"
    echo "Removed existing .bashrc"

fi
ln -s ~/dotfiles/.bashrc ~/.bashrc


