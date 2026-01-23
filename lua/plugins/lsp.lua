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

      -- Keybinds
      vim.keymap.set('n', 'K', function()
        vim.lsp.buf.hover({ border = 'rounded', max_height = 25, max_width = 120 })
      end, { desc = 'Hover documentation' })

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          -- Define your keymaps or autocmds here
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
          -- Open definition in a horizontal split
          vim.keymap.set('n', 'gh', function()
            vim.cmd('split')
            vim.lsp.buf.definition()
          end, { buffer = args.buf, desc = 'LSP definition in horizontal split' })

          -- Open definition in a vertical split (using 'gv' or similar)
          vim.keymap.set('n', 'gv', function()
            vim.cmd('vsplit')
            vim.lsp.buf.definition()
          end, { buffer = args.buf, desc = 'LSP definition in vertical split' })
        end,
      })
    end,
  },
}
