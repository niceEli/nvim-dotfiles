-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local wk = require("which-key")

map("t", "<C-x>", "<C-\\><C-n>")
map("t", "<Esc>", "<C-\\><C-n>")
map("i", "jk", "<Esc>")
map("t", "jk", "<C-\\><C-n>")
map("n", "<A-/>", vim.cmd.noh, { desc = "Clear Search" })
map("n", "<leader>fw", vim.cmd.write, { desc = "Save File" })

-- GITHUB
wk.add({
  { "<leader>gh", group = "Github" },
  { "<leader>ghc", group = "Commits" },
  { "<leader>ghcc", vim.cmd.GHCloseCommit, desc = "Close" },
  { "<leader>ghce", vim.cmd.GHExpandCommit, desc = "Expand" },
  { "<leader>ghco", vim.cmd.GHOpenToCommit, desc = "Open To" },
  { "<leader>ghcp", vim.cmd.GHPopOutCommit, desc = "Pop Out" },
  { "<leader>ghcz", vim.cmd.GHCollapseCommit, desc = "Collapse" },

  { "<leader>ghi", group = "Issues" },
  { "<leader>ghip", vim.cmd.GHPreviewIssue, desc = "Preview" },

  { "<leader>ghl", group = "Litee" },
  { "<leader>ghlt", vim.cmd.LTPanel, desc = "Toggle Panel" },

  { "<leader>ghp", group = "Pull Request" },
  { "<leader>ghpc", vim.cmd.GHClosePR, desc = "Close" },
  { "<leader>ghpd", vim.cmd.GHPRDetails, desc = "Details" },
  { "<leader>ghpe", vim.cmd.GHExpandPR, desc = "Expand" },
  { "<leader>ghpo", vim.cmd.GHOpenPR, desc = "Open" },
  { "<leader>ghpp", vim.cmd.GHPopOutPR, desc = "PopOut" },
  { "<leader>ghpr", vim.cmd.GHRefreshPR, desc = "Refresh" },
  { "<leader>ghpt", vim.cmd.GHOpenToPR, desc = "Open To" },
  { "<leader>ghpz", vim.cmd.GHCollapsePR, desc = "Collapse" },

  { "<leader>ghr", group = "Review" },
  { "<leader>ghrb", vim.cmd.GHStartReview, desc = "Begin" },
  { "<leader>ghrc", vim.cmd.GHCloseReview, desc = "Close" },
  { "<leader>ghrd", vim.cmd.GHDeleteReview, desc = "Delete" },
  { "<leader>ghre", vim.cmd.GHExpandReview, desc = "Expand" },
  { "<leader>ghrs", vim.cmd.GHSubmitReview, desc = "Submit" },
  { "<leader>ghrz", vim.cmd.GHCollapseReview, desc = "Collapse" },

  { "<leader>ght", group = "Threads" },
  { "<leader>ghtc", vim.cmd.GHCreateThread, desc = "Create" },
  { "<leader>ghtn", vim.cmd.GHNextThread, desc = "Next" },
  { "<leader>ghtt", vim.cmd.GHToggleThread, desc = "Toggle" },
})
