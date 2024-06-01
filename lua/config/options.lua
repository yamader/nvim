-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LazyVim
vim.opt.clipboard = nil
vim.opt.ignorecase = false
vim.opt.relativenumber = false
vim.opt.undofile = false

-- system
vim.cmd "set gcr=" -- vim.opt.guicursor = nil
vim.cmd "set mouse=" -- vim.opt.mouse = nil

-- theme
vim.cmd.colorscheme "vim"
vim.cmd.highlight("Identifier", "ctermfg=white")
vim.opt.termguicolors = false

-- layout
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.number = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 16

-- edit
vim.opt.list = true
vim.opt.wrap = false

-- https://github.com/LazyVim/LazyVim/issues/80#issuecomment-1478662212
vim.api.nvim_create_autocmd("FileType", {
  command = "set fo-=cro",
})

-- indent
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
