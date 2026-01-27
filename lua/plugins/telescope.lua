return {
  {
    'nvim-telescope/telescope.nvim',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
      { '<leader>fk', '<cmd>Telescope keymaps<cr>', desc = 'Telescope find keymaps' },
      { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Telescope find files' },
      { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Telescope live grep' },
      { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Telescope buffers' },
      { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Telescope help tags' },
      { '<leader>fds', '<cmd>Telescope lsp_document_symbols<cr>', desc = 'Telescope find document symbols' },
      { '<leader>fws', '<cmd>Telescope lsp_workspace_symbols<cr>', desc = 'Telescope find workspace symbols' },
      {
        '<leader>fdf',
        '<cmd>Telescope lsp_document_symbols symbols=function,method<cr>',
        desc = 'Telescope find document functions and methods',
      },
    },
  },
}
