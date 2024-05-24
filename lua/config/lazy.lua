local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup "plugins"

-- auto update
-- https://github.com/folke/lazy.nvim/issues/702#issuecomment-1903484213
vim.api.nvim_create_autocmd("VimEnter", {
  group = vim.api.nvim_create_augroup("lazyvim_autoupdate", { clear = true }),
  callback = function()
    if require("lazy.status").has_updates then
      require("lazy").update { show = false }
    end
  end,
})
