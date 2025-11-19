-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local o = vim.opt

if vim.loop.os_uname().sysname == "Windows_NT" then
  if vim.fn.executable("zsh") == 1 then
    o.shell = "zsh"
  elseif vim.fn.executable("nu") == 1 then
    o.shell = "nu"
  elseif vim.fn.executable("bash") == 1 then
    o.shell = "bash"
  elseif vim.fn.executable("pwsh") == 1 then
    o.shell = "pwsh"
  elseif vim.fn.executable("powershell") == 1 then
    o.shell = "powershell"
  end
end

if vim.g.neovide then
  vim.o.guifont = "JetBrainsMono Nerd Font,Noto_Color_Emoji:h14"
end

o.wrap = true
