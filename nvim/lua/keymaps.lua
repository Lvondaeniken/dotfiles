local map = vim.keymap.set

-- std --
--
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q<CR>')
-- source the config --
map('n', '<leader>s', ':so<CR>')

-- telescope --
--
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader>fg', builtin.live_grep, {})
map('n', '<leader>fb', builtin.buffers, {})
map('n', '<leader>fh', builtin.help_tags, {})

-- buffer --
--
map('n', '<leader>v', 'bNext<CR>', {})
map('n', '<leader>c', 'blast<CR>', {})


-- windows --
--
map('n', '<leader>wh', ':wincmd h<CR>', {})
map('n', '<leader>wl', ':wincmd l<CR>', {})
map('n', '<leader>wj', ':wincmd j<CR>', {})
map('n', '<leader>wk', ':wincmd k<CR>', {})
map('n', '<leader>ww', ':wincmd w<CR>', {})
map('n', '<leader>wo', ':only<CR>', {})
map('n', '<leader>ws', ':vs<CR>', {})
