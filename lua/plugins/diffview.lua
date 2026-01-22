return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles', 'DiffviewFocusFiles' },
  keys = {
    { '<leader>do', ':DiffviewOpen<cr>', desc = 'Open DiffView' },
    { '<leader>dc', ':DiffviewClose<cr>', desc = 'Close DiffView' },
  },
}
