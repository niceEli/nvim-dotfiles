return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = { layout = { position = "right" } },
          }
        },
        hidden = true,
        ignored = true,
      }
    }
  }
}
