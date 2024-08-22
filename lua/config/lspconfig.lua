 require("lspconfig").phpactor.setup({
  root_dir = function(_)
    return vim.fn.getcwd()
  end,
  init_options = {
    ["language_server_phpstan.enabled"] = false,
    ["language_server_psalm.enabled"] = false,
  },
})
