-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- https://neovim.io/doc/user/editing.html#%2B%2Bp
vim.cmd [[
  " Auto-create parent directories (except for URIs "://").
  au BufWritePre,FileWritePre * if @% !~# '\(://\)' | call mkdir(expand('<afile>:p:h'), 'p') | endif
]]

-- https://github.com/folke/lazy.nvim/issues/702#issuecomment-1903484213
vim.api.nvim_create_autocmd("VimEnter", {
  group = vim.api.nvim_create_augroup("lazyvim_autoupdate", { clear = true }),
  callback = function()
    if require("lazy.status").has_updates then
      require("lazy").update { show = false }
    end
  end,
})
