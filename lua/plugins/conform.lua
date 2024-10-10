return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      php = { "php-cs-fixer" },
      apex = { "prettierd", "prettier" },
      typescript = { "prettierd", "prettier", stop_after_first = true },
      javascript = { "prettierd", "prettier", stop_after_first = true },
    },
  },
}
