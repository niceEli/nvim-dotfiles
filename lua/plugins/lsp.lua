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
      vim.lsp.enable({
        "clangd",
        "gopls",
        "lua_ls",
        "pyright",
        "rust_analyzer",
        "zls",
        "roslyn",
        "ts_ls",
        "nil_ls",
        "kotlin_language_server",
        "java_language_server",
        "docker_language_server",
        "yamlls",
        "bashls"
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
