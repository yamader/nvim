return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup {
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
  build = ":silent TSUpdate",
}
