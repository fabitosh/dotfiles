-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- lua/plugins/keymaps.lua
return {
  "LazyVim/LazyVim",
  opts = {
    keys = {
      -- Your existing mapping, converted to the LazyVim format.
      -- I also corrected a small typo ("jj," to "jj").
      { "jj", "<Esc>", mode = "i", desc = "Exit insert mode" },

      -- Yank/Copy to system clipboard
      { "<leader>y", '"+y', mode = { "n", "v" }, desc = "Yank to clipboard" },
      { "<leader>yy", '"+yy', mode = "n", desc = "Yank line to clipboard" },
      { "<leader>Y", '"+yg_', mode = "n", desc = "Yank to line end to clipboard" },

      -- Paste from system clipboard
      { "<leader>p", '"+p', mode = { "n", "v" }, desc = "Paste from clipboard" },
      { "<leader>P", '"+P', mode = { "n", "v" }, desc = "Paste from clipboard (before)" },
    },
  },
}
