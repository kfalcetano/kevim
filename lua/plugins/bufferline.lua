return {
  'akinsho/bufferline.nvim',
  event = 'BufAdd',
  keys = {
    { '<Leader>w', ':bd<CR>', desc = 'Close current buffer' },
  },
  opts = {},
}
