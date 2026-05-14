return {
  {
    "echasnovski/mini.nvim",
    version = false,

    config = function()
      require("mini.ai").setup({})
      require("mini.comment").setup({})
      require("mini.move").setup({})
      require("mini.surround").setup({})
      require("mini.cursorword").setup({})
      require("mini.indentscope").setup({})
      require("mini.pairs").setup({})
      require("mini.trailspace").setup({})
      require("mini.bufremove").setup({})
      -- require("mini.notify").setup({}) -- i hate mini notify so much, too obtrusive
      require("mini.icons").setup({})
    end,
  },
}