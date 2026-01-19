vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.o.laststatus = 3

vim.wo.number = true

require('config.lazy')

vim.cmd.colorscheme('tokyonight')

-- Close the current buffer without messing with the layout
vim.keymap.set('n', '<leader>bd', function()
  require('mini.bufremove').delete(0) -- 0 refers to the current buffer
end, { desc = 'Delete current buffer (mini)' })
