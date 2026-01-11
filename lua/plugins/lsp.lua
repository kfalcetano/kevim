return {
  -- LSP Configuration
  "neovim/nvim-lspconfig",
  -- Ruff Language Server
  "astral-sh/ruff-lsp",
  -- Optional: Mason for easy LSP installation management
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

  opts = {
    servers = {
      ruff = {
        -- Configuration options can go here (e.g., for settings, extra arguments)
        -- init_options = { settings = { ... } }
      },
    },
  },
}
