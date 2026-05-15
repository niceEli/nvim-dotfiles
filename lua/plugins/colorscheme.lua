local transparent = true

if vim.g.neovide == true then
  transparent = false
end

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = transparent,
      styles = {
        sidebars = "transparent",
        float = "transparent",
      },
    }
  },
}
