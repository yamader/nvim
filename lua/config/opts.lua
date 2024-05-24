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

-- indent
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
