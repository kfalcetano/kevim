local js_formatters = { 'biome', 'prettier', stop_after_first = true }
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
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
  },
}
