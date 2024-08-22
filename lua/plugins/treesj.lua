return {
  "wansmer/treesj",
  keys = {
    { "<space>m", ":TSJToggle<CR>", desc = "Toggle Treesitter Split" },
    { "<space>j", ":TSJSplit<CR>", desc = "Treesitter Split" },
    { "<space>s", ":TSJJoin<CR>", desc = "Treesitter Join" },
  },
  dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
  config = function()
    require("treesj").setup({--[[ your config ]]
    })
  end,
}
