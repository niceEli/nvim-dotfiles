return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {
			columns = {
				"icon",
				"permissions",
				"size",
				"mtime",
			},
			view_options = {
				show_hidden = true,
			},
			constrain_cursor = false,
			watch_for_changes = true,
			keymaps = {
				["<C-h>"] = false,
				["<M-h>"] = { "actions.select", opts = { horizontal = true } },
				["<C-l>"] = false,
				["<M-l>"] = "actions.refresh",
			},
		},
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		lazy = false,

		keys = {
			{
				"-",
				vim.cmd.Oil,
				desc = "Open parent directory",
			},
			{
				"<leader>e",
				function()
					vim.cmd.e(".")
				end,
				desc = "Open Editor [Current Directory]",
			},
		},
	},
	{
		"benomahony/oil-git.nvim",
		dependencies = { "stevearc/oil.nvim" },
		-- No opts or config needed! Works automatically
	},
}
