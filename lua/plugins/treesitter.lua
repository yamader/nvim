return {
  "nvim-treesitter/nvim-treesitter",
  build = ":silent TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
