vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.o.laststatus = 3

-- Open project file tab
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle filesystem left<cr>', { desc = 'File Explorer' })
-- VS Code style Git tab!
vim.keymap.set('n', '<leader>gs', '<cmd>Neotree toggle git_status left<cr>', { desc = 'Git Status' })
    
require("config.lazy")
