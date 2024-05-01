-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
-- Shorten function name

local keymap = vim.api.nvim_set_keymap

-- keep the yank when pasting over selection
keymap("v", "p", '"_dP', opts)

-- source neovim after changing config
keymap("n", "<leader>sv", ":luafile $MYVIMRC<CR>", opts)
