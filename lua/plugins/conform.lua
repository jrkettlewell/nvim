return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      php = { "php_cs_fixer" },
      apex = { "prettierd", "prettier" },
      typescript = { "prettierd", "prettier", stop_after_first = true },
      javascript = { "prettierd", "prettier", stop_after_first = true },
    },
  },
}
