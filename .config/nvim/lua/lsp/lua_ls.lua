local M = {}
M.Lua = {
  runtime = {
    version = 'LuaJIT',
  },
  diagnostics = {
    globals = {'vim'},
  },
  workspace = {
    library = vim.api.nvim_get_runtime_file('', true),
  },
  telemetry = {
    enable = false,
  }
}
return M
