vim.api.nvim_create_user_command("Q", "q!", {})

-- https://neovim.io/doc/user/editing.html#%2B%2Bp
vim.cmd [[
  " Auto-create parent directories (except for URIs "://").
  au BufWritePre,FileWritePre * if @% !~# '\(://\)' | call mkdir(expand('<afile>:p:h'), 'p') | endif
]]
