-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("t", "<C-x>", "<C-\\><C-n>")
map("t", "<Esc>", "<C-\\><C-n>")
map("i", "jk", "<Esc>")
map("t", "jk", "<C-\\><C-n>")
map("n", "<A-/>", vim.cmd.noh, { desc = "Clear Search" })
map("n", "<leader>fw", vim.cmd.write, { desc = "Save File" })
