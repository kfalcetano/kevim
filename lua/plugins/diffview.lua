return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles', 'DiffviewFocusFiles' },
  keys = {
    { '<leader>do', ':DiffviewOpen<cr>', desc = 'Open DiffView' },
    { '<leader>dc', ':DiffviewClose<cr>', desc = 'Close DiffView' },
    { '<leader>dh', ':DiffviewFileHistory %:p<cr>', desc = 'Open file history for current open buffer' },
    { '<leader>dah', ':DiffviewFileHistory<cr>', desc = 'Open all file history' },
  },
}
