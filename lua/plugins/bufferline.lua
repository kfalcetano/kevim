return {
  {
    'akinsho/bufferline.nvim',
    event = 'BufAdd',
    opts = {},
    keys = {
      { '<Tab>', ':BufferLineCycleNext<CR>', desc = 'Go to next buffer' },
      { '<S-Tab>', ':BufferLineCyclePrev<CR>', desc = 'Go to next buffer' },
      { '<leader>bo', ':BufferLineCloseOthers<CR>', desc = 'Close all buffers except the curent one' },
    },
  },
  {
    'nvim-mini/mini.bufremove',
    config = function()
      -- Close the current buffer without messing with the layout
      vim.keymap.set('n', '<leader>bd', function()
        require('mini.bufremove').delete(0) -- 0 refers to the current buffer
      end, { desc = 'Delete current buffer (mini)' })
    end,
  },
}
