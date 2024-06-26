-- wtf
local start = vim.treesitter.start
vim.treesitter.start = function(...)
  pcall(start, ...)
end
