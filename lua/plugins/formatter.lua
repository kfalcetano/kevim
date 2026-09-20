local js_formatters = { 'biome', 'biome-organize-imports' }
return {
  'stevearc/conform.nvim',
  event = 'BufWritePre',
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      python = {
        'ruff_organize_imports',
        'ruff_fix',
        'ruff_format',
      },
      json = js_formatters,
      javascript = js_formatters,
      typescript = js_formatters,
      typescriptreact = js_formatters,
      html = { 'biome' },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
  },
}
