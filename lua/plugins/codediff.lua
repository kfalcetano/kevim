return {
  'esmuellert/codediff.nvim',
  cmd = 'CodeDiff',
  keys = {
    { '<leader>do', ':CodeDiff<cr>', desc = 'Open diff view for git status' },
    { '<leader>dh', ':CodeDiff history %:p<cr>', desc = 'Open file history for current open buffer' },
    { '<leader>dah', ':CodeDiff history<cr>', desc = 'Open all file history' },
  },
}
