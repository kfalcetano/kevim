vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.o.laststatus = 3

vim.wo.number = true

require('config.lazy')

vim.cmd('colorscheme carbonfox')

require('nvim-treesitter').install({ 'python', 'lua' })

-- Close the current buffer without messing with the layout
vim.keymap.set('n', '<leader>bd', function()
  require('mini.bufremove').delete(0) -- 0 refers to the current buffer
end, { desc = 'Delete current buffer (mini)' })
