--// Variables
local cmd = vim.api.nvim_command

--// Core
cmd([[autocmd BufEnter * set fo-=c fo-=r fo-=o]])
cmd([[autocmd BufEnter,WinEnter,FocusGained * set nocin nosi inde=]])
cmd([[autocmd BufEnter,WinEnter,FocusGained * set nohlsearch]])
