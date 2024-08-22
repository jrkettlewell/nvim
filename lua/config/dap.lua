local dap = require('dap')

dap.adapters.php = {
  type = "executable",
  command = "node",
  args = {
    vim.uv.os_homedir() .. "/.local/share/nvim/mason/packages/php-debug-adapter/extension/out/phpDebug.js",
  },
}

-- require("dap.ext.vscode").load_launchjs(vim.fn.getcwd() .. "/.vscode/launch.json", {})

