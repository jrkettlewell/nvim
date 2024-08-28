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


-- Keymaps for the `github` plugin--------------------------------------------------------------------------------
-- Unmap the existing `leader gh`
vim.api.nvim_set_keymap("n", "<leader>gh", "", { noremap = true, silent = true })

wk.add({
  { "<leader>g", group = "Git" },
  { "<leader>gh", group = "Github", desc = "Github" },
  { "<leader>ghc", group = "Commits" },
  { "<leader>ghcc", "<cmd>GHCloseCommit<cr>", desc = "Close" },
  { "<leader>ghce", "<cmd>GHExpandCommit<cr>", desc = "Expand" },
  { "<leader>ghco", "<cmd>GHOpenToCommit<cr>", desc = "Open To" },
  { "<leader>ghcp", "<cmd>GHPopOutCommit<cr>", desc = "Pop Out" },
  { "<leader>ghcz", "<cmd>GHCollapseCommit<cr>", desc = "Collapse" },
  { "<leader>ghi", group = "Issues" },
  { "<leader>ghip", "<cmd>GHPreviewIssue<cr>", desc = "Preview" },
  { "<leader>ghl", group = "Litee" },
  { "<leader>ghlt", "<cmd>LTPanel<cr>", desc = "Toggle Panel" },
  { "<leader>ghp", group = "Pull Request" },
  { "<leader>ghpc", "<cmd>GHClosePR<cr>", desc = "Close" },
  { "<leader>ghpd", "<cmd>GHPRDetails<cr>", desc = "Details" },
  { "<leader>ghpe", "<cmd>GHExpandPR<cr>", desc = "Expand" },
  { "<leader>ghpo", "<cmd>GHOpenPR<cr>", desc = "Open" },
  { "<leader>ghpp", "<cmd>GHPopOutPR<cr>", desc = "PopOut" },
  { "<leader>ghpr", "<cmd>GHRefreshPR<cr>", desc = "Refresh" },
  { "<leader>ghpt", "<cmd>GHOpenToPR<cr>", desc = "Open To" },
  { "<leader>ghpz", "<cmd>GHCollapsePR<cr>", desc = "Collapse" },
  { "<leader>ghr", group = "Review" },
  { "<leader>ghrb", "<cmd>GHStartReview<cr>", desc = "Begin" },
  { "<leader>ghrc", "<cmd>GHCloseReview<cr>", desc = "Close" },
  { "<leader>ghrd", "<cmd>GHDeleteReview<cr>", desc = "Delete" },
  { "<leader>ghre", "<cmd>GHExpandReview<cr>", desc = "Expand" },
  { "<leader>ghrs", "<cmd>GHSubmitReview<cr>", desc = "Submit" },
  { "<leader>ghrz", "<cmd>GHCollapseReview<cr>", desc = "Collapse" },
  { "<leader>ght", group = "Threads" },
  { "<leader>ghtc", "<cmd>GHCreateThread<cr>", desc = "Create" },
  { "<leader>ghtn", "<cmd>GHNextThread<cr>", desc = "Next" },
  { "<leader>ghtt", "<cmd>GHToggleThread<cr>", desc = "Toggle" },
})

-- Keymaps for Gitsigns plugin-----------------------------------------------------------------------------------
wk.add({
  { "<leader>gp", group = "Git Preview", desc = "Git Preview" },
  { "<leader>gpi", "<cmd>:Gitsigns preview_hunk_inline<CR>", desc = "Inline"},
  { "<leader>gph", "<cmd>:Gitsigns preview_hunk<CR>", desc = "Hunk"},
  { "<leader>gt", "<cmd>:Gitsigns toggle_current_line_blame<CR>", desc = "Toggle line blame"},
})
