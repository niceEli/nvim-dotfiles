return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "antoinemadec/FixCursorHold.nvim",
      "Issafalcon/neotest-dotnet",
      "marilari88/neotest-vitest",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-dotnet"),
          require("neotest-vitest"),
        },
      })
    end,
    keys = {
      {
        "<leader>tt",
        function()
          require("neotest").run.run()
        end,
        desc = "Run nearest test",
      },
      {
        "<leader>tf",
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end,
        desc = "Run file tests",
      },
      {
        "<leader>tn",
        function()
          require("neotest").run.run({ strategy = "dap" })
        end,
        desc = "Debug nearest test",
      },
      {
        "<leader>ts",
        function()
          require("neotest").summary.toggle()
        end,
        desc = "Toggle test summary",
      },
      {
        "<leader>to",
        function()
          require("neotest").output.open()
        end,
        desc = "Open test output",
      },
      {
        "<leader>tO",
        function()
          require("neotest").output_panel.toggle()
        end,
        desc = "Toggle test output panel",
      },
      {
        "<leader>tS",
        function()
          require("neotest").run.stop()
        end,
        desc = "Stop test",
      },
    },
  }
}
