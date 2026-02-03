-- Map the leader to spacebar
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Turn off folding by default and allow toggling to work the first time without triggering a recursive fold
vim.opt.foldlevel = 99
vim.opt.foldenable = false

-- A single global statusline
vim.o.laststatus = 3

-- Enable relative line numbers with current absolute line number
vim.wo.number = true
vim.wo.relativenumber = true

-- Configure default tabs
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Highlight current line
vim.opt.cursorline = true

-- Custom keybinds for default neovim actions
vim.keymap.set('n', '<leader>n', ':noh<cr>', { desc = 'Clear search hightlight' })

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

require('config.lazy')

vim.cmd('colorscheme carbonfox')
