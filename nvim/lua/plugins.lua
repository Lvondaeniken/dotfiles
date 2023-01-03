-- plugins --
--
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
vim.call('plug#end')

-- config --
--
vim.cmd [[silent! colorscheme jellybeans]]

