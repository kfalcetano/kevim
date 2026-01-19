return {
  {
    'williamboman/mason.nvim',
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
    },
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { 'vim' },
              },
            },
          },
        },
        ts_ls = {},
        eslint = {},
        tailwindcss = {},
      },
    },
    config = function(_, opts)
      vim.lsp.config('ty', {
        settings = {
          ty = {
            -- ty language server settings go here, if any
          },
        },
      })

      vim.lsp.enable('ty')

      require('mason').setup()

      require('mason-lspconfig').setup({
        ensure_installed = { 'lua_ls' },
      })

      vim.diagnostic.config({
        virtual_text = true,
        underline = true,
      })

      for server, config in pairs(opts.servers) do
        vim.lsp.config(server, config)
        vim.lsp.enable(server)
      end
      vim.keymap.set('n', 'K', function()
        vim.lsp.buf.hover({ border = 'rounded', max_height = 25, max_width = 120 })
      end, { desc = 'Hover documentation' })
    end,
  },
}
