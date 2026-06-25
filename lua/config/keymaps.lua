local map = vim.keymap.set

local function mapgroup(type, keycode, desc)
  return map(type, keycode, "", { desc = desc })
end

mapgroup("n", "<leader>l", "LSP")
mapgroup("n", "<leader>ln", "Native LSP Actions")
mapgroup("n", "<leader>b", "Buffer Management")
mapgroup("n", "<leader>w", "Window Management")

map("t", "<C-x>", "<C-\\><C-n>")
map("t", "<Esc>", "<C-\\><C-n>")
map("i", "jk", "<Esc>")
map("t", "jk", "<C-\\><C-n>")
map("n", "<M-/>", vim.cmd.noh, { desc = "Clear Search" })
map("n", "<leader>c", vim.cmd.noh, { desc = "Clear Search" })
map("n", "<leader>fw", vim.cmd.write, { desc = "Save File" })
map("n", "<leader>bw", vim.cmd.write, { desc = "Save Buffer" })
map("n", "<leader>bd", vim.cmd.bdelete, { desc = "Delete Buffer" })
map("n", "<leader>wd", vim.cmd.quit, { desc = "Delete Split" })
map("n", "<leader>qq", vim.cmd.quitall, { desc = "Close nvim" })

map("n", "n", "nzzzv", { desc = "Next search result" })
map("n", "N", "Nzzzv", { desc = "Previous search result" })

map("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })
map({ "n", "v" }, "<leader>x", '"_d', { desc = "Delete without yanking" })

map("n", "<leader>wv", ":vsplit<CR>", { desc = "Split window vertically" })
map("n", "<leader>wh", ":split<CR>", { desc = "Split window horizontally" })
map("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })
map("n", "<C-S-h>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-S-l>", ":vertical resize +2<CR>", { desc = "Increase window width" })
map("n", "<C-S-j>", ":resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-S-k>", ":resize +2<CR>", { desc = "Increase window height" })

map("n", "<C-M-h>", function()
  require("lib.swap-buffers").swap_buffers("h")
end, { desc = "Swap buffer left" })

map("n", "<C-M-j>", function()
  require("lib.swap-buffers").swap_buffers("j")
end, { desc = "Swap buffer down" })

map("n", "<C-M-k>", function()
  require("lib.swap-buffers").swap_buffers("k")
end, { desc = "Swap buffer up" })

map("n", "<C-M-l>", function()
  require("lib.swap-buffers").swap_buffers("l")
end, { desc = "Swap buffer right" })

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
map("n", "<leader>lf", function()
  vim.lsp.buf.format({
    async = true,
    timeout_ms = 5000,
  })
end, { desc = "Format buffer" })

-- LSP

map("n", "<leader>ld", require("telescope.builtin").lsp_document_symbols, { desc = "LSP: Document Symbols" })
map("n", "<leader>lnd", vim.lsp.buf.document_symbol, { desc = "LSP: Document Symbols (NATIVE)" })

map("n", "<leader>lD", require("telescope.builtin").lsp_definitions, { desc = "LSP: Goto Definitions" })
map("n", "<leader>lnD", vim.lsp.buf.definition, { desc = "LSP: Goto Definitions (NATIVE)" })

map("n", "<leader>lh", vim.lsp.buf.signature_help, { desc = "LSP: Symbol Help" })

map("n", "<leader>lr", require("telescope.builtin").lsp_references, { desc = "LSP: Goto References" })
map("n", "<leader>lnr", vim.lsp.buf.references, { desc = "LSP: Goto References (NATIVE)" })

map("n", "<leader>lt", require("telescope.builtin").lsp_type_definitions, { desc = "LSP: Goto Type Definition" })
map("n", "<leader>lnt", vim.lsp.buf.type_definition, { desc = "LSP: Goto Type Definition (NATIVE)" })

map("n", "<leader>li", require("telescope.builtin").lsp_implementations, { desc = "LSP: Goto Implementations" })
map("n", "<leader>lni", vim.lsp.buf.implementation, { desc = "LSP: Goto Implementations (NATIVE)" })

map("n", "<leader>lws", require("telescope.builtin").lsp_workspace_symbols, { desc = "LSP: Workspace Symbols" })
map("n", "<leader>lnws", vim.lsp.buf.workspace_symbol, { desc = "LSP: Workspace Symbols (NATIVE)" })

map("n", "<leader>la", vim.lsp.buf.code_action, { desc = "LSP: Code Actions" })
map("n", "<leader>lf", vim.lsp.buf.format, { desc = "LSP: Format Buffer" })
map("n", "<leader>lR", vim.lsp.buf.rename, { desc = "LSP: Rename Symbol" })

map("n", "K", vim.lsp.buf.hover, { desc = "LSP: Hover Documentation" })
map("n", "<leader>lk", vim.lsp.buf.hover, { desc = "LSP: Hover Documentation" })

-- Moving around splits
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Telescope find files' })
map('n', '<leader><leader>', require('telescope.builtin').find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Telescope help tags' })

-- Neovide
if vim.g.neovide == true then
  map({ "n" }, "<F11>", function()
    if vim.g.neovide_fullscreen == false then
      vim.g.neovide_fullscreen = true
    else
      vim.g.neovide_fullscreen = false
    end
  end, { silent = true })
end
