return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            },
            workspace = {
              preloadFileSize = 10000,
              library = {
                vim.env.VIMRUNTIME,
              }
            },
          },
        },
      })
    end,
  },
  {
    'mason-org/mason.nvim',
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  }
}
