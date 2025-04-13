return {
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "rust",
        "c",
        "css",
        "dockerfile",
      },
    },
  },

  -- Mason (AppLSP)
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "shellcheck",
        "harper-ls",
        "lua-language-server",
        "stylua",
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",
        "clangd",
        "clang-format",
        "rust-analyzer",
        "bacon",
        "bacon",
        "bacon-ls",
        "cpptools",
        "chrome-debug-adapter",
        "firefox-debug-adapter",
        "js-debug-adapter",
        "biome",
        "codelldb",
      },
    },
  },
}
