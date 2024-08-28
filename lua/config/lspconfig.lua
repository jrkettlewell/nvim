local nvim_lsp = require("lspconfig")

nvim_lsp.phpactor.setup({
  root_dir = function(_)
    return vim.fn.getcwd()
  end,
  init_options = {
    ["language_server_phpstan.enabled"] = false,
    ["language_server_psalm.enabled"] = false,
    ["language_server_completion.autoimport"] = true, -- Enable auto-import on completion
    ["language_server.diagnostics_on_save"] = true, -- Run diagnostics on save
    ["language_server.indexing.enabled"] = true, -- Enable background indexing
    ["language_server_completion.resolve_use_statements"] = true, -- Resolve use statements for completio
    ["language_server_worse_reflection.inlay_hints.enable"] = true,
    ["language_server_worse_reflection.inlay_hints.params"] = true,
    ["language_server_worse_reflection.inlay_hints.types"] = true,
  },
})
