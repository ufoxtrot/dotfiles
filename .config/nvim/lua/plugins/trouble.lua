return {
  'folke/trouble.nvim',
  cmd = 'Trouble',
  config = function()
    require("trouble").setup {
      position = "bottom",
      height = 10,
      width = 50,
      icons = true,
      mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist" fold_open = "", 
      fold_closed = "",
      group = true,
      padding = true,
      indent_lines = false,
      auto_open = false,
      auto_close = true,
      auto_preview = true,
      auto_fold = false,
      auto_jump = { "lsp_definitions" },
      signs = {
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "﫠"
      },
      use_diagnostic_signs = false
    }
  end
}
