return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        window = {
          width = 30,
        },
        filesystem = {
	  use_libuv_file_watcher = true,
          filtered_items = {
            visible = true,
          },
          follow_current_file = { enabled = true }, -- auto-expand folders to show current file
          use_libuv_file_watcher = true, -- auto-refresh when files change
        },
        -- This is the Git integration part
        default_component_configs = {
          git_status = {
            symbols = {
              -- Change these symbols to your liking
              added     = "A",
              modified  = "M",
              deleted   = "D",
              renamed   = "R",
              untracked = "U",
              ignored   = "",
              unstaged  = "󰄱",
              staged    = "",
              conflict  = "",
            }
          }
        }
      })
      
      -- Keymaps
      vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle filesystem left<cr>', { desc = 'File Explorer' })
      -- VS Code style Git tab!
      vim.keymap.set('n', '<leader>gs', '<cmd>Neotree toggle git_status left<cr>', { desc = 'Git Status' })
    end
  },
}
