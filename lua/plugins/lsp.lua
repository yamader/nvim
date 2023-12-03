return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  build = ":MasonUpdate",
  config = function()
    require("mason").setup {}
    require("mason-lspconfig").setup {
      automatic_installation = true,
      handlers = {
        function(server)
          require("lspconfig")[server].setup {}
        end,
      },
    }
  end,
}
