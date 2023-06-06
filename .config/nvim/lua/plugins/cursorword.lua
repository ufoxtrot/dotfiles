return {
  'xiyaowong/nvim-cursorword',
  event = 'InsertEnter',
  config = function()
    vim.g.cursorword_min_width = 3
    vim.g.cursorword_disable_filetypes = { 'NvimTree' }
  end
}
