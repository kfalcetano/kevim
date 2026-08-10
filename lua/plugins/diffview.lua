return {
  'sindrets/diffview.nvim',
  cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles', 'DiffviewFocusFiles' },
  opts = { view = { merge_tool = { layout = 'diff3_mixed' } } },
  keys = {
    { '<leader>do', ':DiffviewOpen<cr>', desc = 'Open DiffView' },
    { '<leader>dc', ':DiffviewClose<cr>', desc = 'Close DiffView' },
    { '<leader>dh', ':DiffviewFileHistory %:p<cr>', desc = 'Open file history for current open buffer' },
    { '<leader>dah', ':DiffviewFileHistory<cr>', desc = 'Open all file history' },
    {
      '<leader>dm',
      ':DiffviewOpen origin/main...HEAD --imply-local<cr>',
      desc = 'Open diff between branch HEAD and main (usual merge base)',
    },
  },
}
