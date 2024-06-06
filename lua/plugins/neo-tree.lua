return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  init = function()
    require("neo-tree").setup {
      filesystem = {
        follow_current_file = { enabled = true },
        hijack_netrw_behavior = "open_current",
        use_libuv_file_watcher = true,
      },
    }
  end,
  keys = {
    { "T", "<Cmd>Neotree<CR>", desc = "Neotree" },
  },
}
