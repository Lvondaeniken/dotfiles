#!/bin/bash

########
# nvim #
########

mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"
mkdir -p "$XDG_CONFIG_HOME/nvim/lua"
mkdir -p "$XDG_CONFIG_HOME/nvim/after/plugin"

ln -sf "$DOTFILES/nvim/init.lua" "$XDG_CONFIG_HOME/nvim"
ln -sf "$DOTFILES/nvim/lua/plugins.lua" "$XDG_CONFIG_HOME/nvim/lua"
ln -sf "$DOTFILES/nvim/lua/options.lua" "$XDG_CONFIG_HOME/nvim/lua"
ln -sf "$DOTFILES/nvim/lua/keymaps.lua" "$XDG_CONFIG_HOME/nvim/lua"
ln -sf "$DOTFILES/nvim/after/plugin/lsp.lua" "$XDG_CONFIG_HOME/nvim/after/plugin"


rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME"

######
# i3 #
######

rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME"

#######
# Zsh #
#######

mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"

#########
# Fonts #
#########

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

#########
# dunst #
#########

mkdir -p "$XDG_CONFIG_HOME/dunst"
ln -sf "$DOTFILES/dunst/dunstrc" "$XDG_CONFIG_HOME/dunst/dunstrc"
