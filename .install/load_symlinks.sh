#!/bin/bash


echo "Loading Symbolic Links..."

#btop
ln -s ~/dotfiles/btop ~/.config/btop

#cava
ln -s ~/dotfiles/cava ~/.config/cava

#dunst
ln -s ~/dotfiles/dunst ~/.config/dunst

#fastfetch
ln -s ~/dotfiles/fastfetch ~/.config/fastfetch

#hypr
ln -s ~/dotfiles/hypr ~/.config/hypr

#kitty
ln -s ~/dotfiles/kitty ~/.config/kitty

#neovim
ln -s ~/dotfiles/nvim ~/.config/nvim

#rofi-wayland
ln -s ~/dotfiles/rofi ~/.config/rofi

#tmux
ln -s ~/dotfiles/tmux ~/.config/tmux

#waybar
ln -s ~/dotfiles/waybar ~/.config/waybar

#starship
ln -s ~/dotfiles/starship.toml ~/.config/starship.toml

#swappy 
ln -s ~/dotfiles/swappy ~/.config/swappy

#yay packages -----------------------------------------------

#wlogout
ln -s ~/dotfiles/wlogout ~/.config/wlogout  # yay package

#waypaper 
ln -s ~/dotfiles/waypaper ~/.config/waypaper

# loading scripts
ln -s ~/dotfiles/scripts ~/.config/scripts # custom scripts

# bash configs
ln -s ~/dotfiles/bashconfigs ~/.config/bashconfigs

# yazi 
ln -s ~/dotfiles/yazi ~/.config/yazi



# If .bashrc already exists then removing it
if [ -f "$HOME/.bashrc" ]; then
    rm "$HOME/.bashrc"
    echo "Removed existing .bashrc"

fi
ln -s ~/dotfiles/.bashrc ~/.bashrc


