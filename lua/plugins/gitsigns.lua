return {
  'lewis6991/gitsigns.nvim',
  event = 'BufReadPre',
  opts = {
    signs = {
      add = { text = '┃' },
      change = { text = '┃' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
      untracked = { text = '┆' },
    },
    current_line_blame = true,
  },
  keys = {
    { ']c', ':Gitsigns nav_hunk next<cr>', desc = 'Next git change' },
    { '[c', ':Gitsigns nav_hunk prev<cr>', desc = 'Previous git change' },
    { '<leader>gp', ':Gitsigns preview_hunk<cr>', desc = 'Preview git change' },
    { '<leader>gr', ':Gitsigns reset_hunk<cr>', mode = { 'n', 'v' }, desc = 'Reset git change / range' },
  },
}
