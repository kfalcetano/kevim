return {
  'akinsho/bufferline.nvim',
  event = 'BufAdd', -- or 'BufEnter'
  config = function()
    require('bufferline').setup({})
  end,
}
