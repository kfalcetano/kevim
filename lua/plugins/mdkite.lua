return {
  'selimacerbas/mdkite.nvim',
  dependencies = { 'selimacerbas/kitehost.nvim' },
  keys = {
    { '<leader>mp', ':MdKite toggle<cr>', desc = 'Toggle browser markdown preview' },
    { '<leader>mr', ':MdKite refresh<cr>', desc = 'Refresh browser markdown preview' },
  },
}
