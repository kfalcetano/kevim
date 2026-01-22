vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.foldenable = false

-- Sensitive buffer reload so external changes are picked up quickly
vim.opt.autoread = true
vim.cmd([[
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
]])

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank({
      timeout = 300, -- Duration in milliseconds
      higroup = 'IncSearch', -- Highlight group to use
    })
  end,
})

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'
vim.o.laststatus = 3

vim.wo.number = true

require('config.lazy')

vim.cmd('colorscheme carbonfox')

require('nvim-treesitter.install').compilers = { 'zig', 'gcc', 'clang' }
require('nvim-treesitter').install({ 'python', 'lua' })

-- Autocmds to enable treesitter functions on filetypes
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'python', 'lua' },
  callback = function()
    vim.treesitter.start()
    vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo[0][0].foldmethod = 'expr'
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})

-- Close the current buffer without messing with the layout
vim.keymap.set('n', '<leader>bd', function()
  require('mini.bufremove').delete(0) -- 0 refers to the current buffer
end, { desc = 'Delete current buffer (mini)' })
