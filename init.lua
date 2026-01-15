vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.o.laststatus = 3
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.wo.number = true

require('config.lazy')

vim.cmd.colorscheme('tokyonight')
