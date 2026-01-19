return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8', -- Recommended to use a stable tag
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Telescope find files' } },
      { '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Telescope live grep' } },
      { '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Telescope buffers' } },
      { '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Telescope help tags' } },
    },
  },
}
