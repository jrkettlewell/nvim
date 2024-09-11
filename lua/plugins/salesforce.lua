return {
  {
    "stevearc/conform.nvim",

    opts = function()
      local opts = {
        formatters_by_ft = {
          apex = {"prettier"},
        },
      }
      return opts
    end,
  },
  {
    "xixiaofinland/sf.nvim",

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "ibhagwan/fzf-lua", -- no need if you don't use listing metadata feature
    },

    config = function()
      require("sf").setup() -- Important to call setup() to initialize the plugin!
    end,
  },
}
