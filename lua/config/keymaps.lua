-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
-- Shorten function name
local map = vim.keymap.set

-- keep the yank when pasting over selection
map("v", "p", '"_dP', opts)

-- source neovim after changing config
map("n", "<leader>sv", ":luafile $MYVIMRC<CR>", opts)

-- Copy file name
map("n", "<leader>bc", ':let @+= expand("%:t")<cr>', { desc = "Copy file name" })

-- Copy file path
map("n", "<leader>bC", ':let @+= expand("%")<cr>', { desc = "Copy file path" })
