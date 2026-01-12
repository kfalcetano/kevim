vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.o.laststatus = 3

vim.wo.number = true

require('config.lazy')

vim.cmd.colorscheme('tokyonight')
