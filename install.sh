#!/bin/bash
 
# snap
snap install obsidian 
snap install --classic nvim

# apt
apt install alacritty
# TODO npm nodejs
# lazygit

# nvim
mkdir -p ~/.config/nvim
ln -sf nvim ~/.config/nvim

# alacritty
ln -sf config/alacritty ~/.config/alacritty

# font
mkdir -p ~/.fonts
cp -rf fonts ~/.fonts
