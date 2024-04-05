#!/bin/bash

########
# nvim #
########

mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/lua/user/lsp/settings"

ln -sf "$DOTFILES/nvim/init.lua" "$XDG_CONFIG_HOME/nvim"
ln -sf "$DOTFILES/nvim/lua/user/plugins.lua" "$XDG_CONFIG_HOME/nvim/lua/user"
ln -sf "$DOTFILES/nvim/lua/user/options.lua" "$XDG_CONFIG_HOME/nvim/lua/user"
ln -sf "$DOTFILES/nvim/lua/user/keymaps.lua" "$XDG_CONFIG_HOME/nvim/lua/user"
ln -sf "$DOTFILES/nvim/lua/user/colorscheme.lua" "$XDG_CONFIG_HOME/nvim/lua/user"
ln -sf "$DOTFILES/nvim/lua/user/cmp.lua" "$XDG_CONFIG_HOME/nvim/lua/user"
ln -sf "$DOTFILES/nvim/lua/user/treesitter.lua" "$XDG_CONFIG_HOME/nvim/lua/user"
ln -sf "$DOTFILES/nvim/lua/user/telescope.lua" "$XDG_CONFIG_HOME/nvim/lua/user"
ln -sf "$DOTFILES/nvim/lua/user/nvim-tree.lua" "$XDG_CONFIG_HOME/nvim/lua/user"
ln -sf "$DOTFILES/nvim/lua/user/autopairs.lua" "$XDG_CONFIG_HOME/nvim/lua/user"
ln -sf "$DOTFILES/nvim/lua/user/gitsigns.lua" "$XDG_CONFIG_HOME/nvim/lua/user"
ln -sf "$DOTFILES/nvim/lua/user/bufferline.lua" "$XDG_CONFIG_HOME/nvim/lua/user"
ln -sf "$DOTFILES/nvim/lua/user/comment.lua" "$XDG_CONFIG_HOME/nvim/lua/user"

############
# nvim lsp #
############
ln -sf "$DOTFILES/nvim/lua/user/lsp/init.lua" "$XDG_CONFIG_HOME/nvim/lua/user/lsp"
ln -sf "$DOTFILES/nvim/lua/user/lsp/handlers.lua" "$XDG_CONFIG_HOME/nvim/lua/user/lsp"
ln -sf "$DOTFILES/nvim/lua/user/lsp/lsp-installer.lua" "$XDG_CONFIG_HOME/nvim/lua/user/lsp"
ln -sf "$DOTFILES/nvim/lua/user/lsp/null-ls.lua" "$XDG_CONFIG_HOME/nvim/lua/user/lsp"
ln -sf "$DOTFILES/nvim/lua/user/lsp/settings/jsonls.lua" "$XDG_CONFIG_HOME/nvim/lua/user/lsp/settings"
ln -sf "$DOTFILES/nvim/lua/user/lsp/settings/sumneko_lua.lua" "$XDG_CONFIG_HOME/nvim/lua/user/lsp/settings"
ln -sf "$DOTFILES/nvim/lua/user/lsp/settings/pyright.lua" "$XDG_CONFIG_HOME/nvim/lua/user/lsp/settings"

#######
# X11 #
#######
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
