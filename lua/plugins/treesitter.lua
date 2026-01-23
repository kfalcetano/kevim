-- Add languages from treesitter here
local treesitter_langs = { 'python', 'lua', 'typescript', 'javascript', 'tsx', 'jsx' }

-- Add filetypes for which to automatically enable treesitter
local filetypes = { 'python', 'lua', 'typescript', 'javascript', 'typescriptreact' }

return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.install').compilers = { 'zig', 'gcc', 'clang' }
    require('nvim-treesitter').install(treesitter_langs)

    -- Autocmds to enable treesitter functions on filetypes
    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function()
        vim.treesitter.start()
        vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo[0][0].foldmethod = 'expr'
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
