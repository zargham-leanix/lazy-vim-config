-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.scrolloff = 200 -- keep curson in middle
vim.opt.hidden = true -- don't know what it does
vim.opt.sidescrolloff = 8
vim.g.blamer_enabled = true
vim.opt.relativenumber = false

vim.cmd("language en_US")
vim.diagnostic.open_float()
