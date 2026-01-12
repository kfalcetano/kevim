return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    lazy = false,
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
      { '<leader>gs', '<cmd>Neotree toggle git_status left<cr>', desc = 'Git Status' },
      { '<leader>e', '<cmd>Neotree toggle<cr>', desc = 'Toggle Neo-tree' },
      { '<leader>o', '<cmd>Neotree focus<cr>', desc = 'Focus Neo-tree' },
    },
    opts = {
      window = {
        width = 30,
      },
      filesystem = {
        use_libuv_file_watcher = true,
        filtered_items = {
          visible = true,
        },
        follow_current_file = { enabled = true },
        close_if_last_window = false,
      },
      -- This is the Git integration part
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change these symbols to your liking
            added = 'A',
            modified = 'M',
            deleted = 'D',
            renamed = 'R',
            untracked = 'U',
            ignored = '',
            unstaged = '󰄱',
            staged = '',
            conflict = '',
          },
        },
      },
    },
  },
}
