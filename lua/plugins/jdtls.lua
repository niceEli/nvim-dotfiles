return {
  {
    "mfussenegger/nvim-jdtls",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      vim.lsp.config("jdtls", {
        settings = {
          java = {
            -- Custom eclipse.jdt.ls options go here
          },
        },
      })
      vim.lsp.enable("jdtls")
    end,
  }
}
