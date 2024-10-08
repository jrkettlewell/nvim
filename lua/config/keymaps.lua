-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "resume" }
)


-- Keymaps for Gitsigns plugin-----------------------------------------------------------------------------------
wk.add({
  { "<leader>gv", group = "Git Preview", desc = "Git Preview" },
  { "<leader>gvi", "<cmd>:Gitsigns preview_hunk_inline<CR>", desc = "Inline"},
  { "<leader>gvh", "<cmd>:Gitsigns preview_hunk<CR>", desc = "Hunk"},
  { "<leader>gt", "<cmd>:Gitsigns toggle_current_line_blame<CR>", desc = "Toggle line blame"},
})

wk.add({
    {'<leader>dX', "<cmd>lua require'dap'.clear_breakpoints()<CR>", desc = "Clear all breakpoints"}
})
