vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.options")
require("config.lazy")
require("config.keymaps")
require("config.autocmds")

vim.cmd([[colorscheme tokyonight-night]])

if vim.g.neovide == true then
  vim.g.neovide_opacity = 0.95
end
