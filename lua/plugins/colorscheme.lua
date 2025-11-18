return {
  { "projekt0n/github-nvim-theme" }, -- github if i want
  { -- set theme
    "LazyVim/LazyVim",
    opts = function()
      local theme = "tokyonight-night"
      return {
        colorscheme = theme,
      }
    end,
  },
}
