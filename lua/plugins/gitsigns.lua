return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '┃' },
        change = { text = '┃' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
        untracked = { text = '┆' },
      },
      -- Keymaps to jump between changes like VS Code
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        vim.keymap.set('n', ']c', function()
          gs.nav_hunk('next')
        end, { desc = 'Next Change' })
        vim.keymap.set('n', '[c', function()
          gs.nav_hunk('prev')
        end, { desc = 'Prev Change' })
        vim.keymap.set('n', '<leader>gp', gs.preview_hunk, { desc = 'Preview Change' })
      end,
    },
  },
}
