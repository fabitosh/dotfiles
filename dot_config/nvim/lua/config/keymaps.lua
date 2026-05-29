-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Exit insert mode
map("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Yank/Copy to system clipboard
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to clipboard" })
map("n", "<leader>yy", '"+yy', { desc = "Yank line to clipboard" })
map("n", "<leader>Y", '"+yg_', { desc = "Yank to line end to clipboard" })

-- Paste from system clipboard
map({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from clipboard" })
map({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste from clipboard (before)" })
