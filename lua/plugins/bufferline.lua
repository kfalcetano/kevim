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
}
