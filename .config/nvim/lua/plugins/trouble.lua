return {
  'folke/trouble.nvim',
  cmd = 'TroubleToggle',
  config = function()
    require("trouble").setup {
      height = 10,
      mode = "document_diagnostics",
    }
  end
}
