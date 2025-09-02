-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt


opt.shell = "zsh"

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font:h14"
end

opt.wrap = true
