vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.o.laststatus = 3

vim.wo.number = true

-- In your persistence.nvim config or init.lua
vim.api.nvim_create_autocmd('User', {
  pattern = 'PersistenceSavePre',
  callback = function()
    -- Force close Neo-tree before saving the session
    vim.cmd('Neotree close')
  end,
})

require('config.lazy')

vim.cmd.colorscheme('tokyonight')
