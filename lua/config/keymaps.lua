local map = vim.keymap.set

map("t", "<C-x>", "<C-\\><C-n>")
map("t", "<Esc>", "<C-\\><C-n>")
map("i", "jk", "<Esc>")
map("t", "jk", "<C-\\><C-n>")
map("n", "<M-/>", vim.cmd.noh, { desc = "Clear Search" })
map("n", "<leader>c", vim.cmd.noh, { desc = "Clear Search" })
map("n", "<leader>fw", vim.cmd.write, { desc = "Save File" })
map("n", "<leader>qq", vim.cmd.quitall, { desc = "Close nvim" })

map("n", "n", "nzzzv", { desc = "Next search result" })
map("n", "N", "Nzzzv", { desc = "Previous search result" })

map("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })
map({ "n", "v" }, "<leader>x", '"_d', { desc = "Delete without yanking" })

map("n", "<leader>sv", ":vsplit<CR>", { desc = "Split window vertically" })
map("n", "<leader>sh", ":split<CR>", { desc = "Split window horizontally" })
map("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

map("v", "<", "<gv", { desc = "Indent left and reselect" })
map("v", ">", ">gv", { desc = "Indent right and reselect" })

map("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

map("n", "<leader>pa", function() -- show file path
	local path = vim.fn.expand("%:p")
	vim.fn.setreg("+", path)
	print("file:", path)
end, { desc = "Copy full file path" })

map("n", "<leader>td", function()
	vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Toggle diagnostics" })

map("n", "<leader>bf", function()
  vim.lsp.buf.format({
    async = true,
    timeout_ms = 5000,
  })
end, { desc = "Format buffer" })

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

if vim.g.neovide == true then
  map({ "n" }, "<F11>", function()
    if vim.g.neovide_fullscreen == false then
      vim.g.neovide_fullscreen = true
    else
      vim.g.neovide_fullscreen = false
    end
  end, { silent = true })
end
