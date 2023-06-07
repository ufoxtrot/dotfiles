return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {
        signcolumn = true,
        numhl      = true,
        linehl     = false,
        word_diff  = false
      }
    end
  },
  {
    'tpope/vim-fugitive'
  }
}
