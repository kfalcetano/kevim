return {
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers", -- "tabs" for actual vim tabs, "buffers" for VS Code style tabs
          separator_style = "thin",
          always_show_bufferline = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
        },
      })

      -- Keymaps to cycle through tabs like VS Code (Ctrl+Tab behavior)
      vim.keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next Tab' })
      vim.keymap.set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev Tab' })
      vim.keymap.set('n', '<leader>x', '<cmd>bdelete<cr>', { desc = 'Close Current Tab' })
    end,
  },
}

