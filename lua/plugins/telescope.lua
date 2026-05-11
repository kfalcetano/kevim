return {
  {
    'nvim-telescope/telescope.nvim',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-ui-select.nvim' },
    opts = {
      pickers = {
        find_files = {
          hidden = true,
          file_ignore_patterns = { '%.git/' },
        },
      },
    },
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
      { '<leader>ft', '<cmd>Telescope builtin<cr>', desc = 'Telescope find telescope commands' },
      { '<leader>fi', '<cmd>Telescope git_branches<cr>', desc = 'Telescope find git branches' },
      { '<leader>fr', '<cmd>Telescope lsp_references<cr>', desc = 'Telescope find symbol references' },
      { '<leader>fq', '<cmd>Telescope quickfix<cr>', desc = 'Telescope find quickfix items' },
    },
    config = function()
      local telescope = require('telescope')
      telescope.setup({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown({
              -- optional options
            }),
          },
        },
      })
      -- You MUST load the extension after setup
      telescope.load_extension('ui-select')
    end,
  },
}
