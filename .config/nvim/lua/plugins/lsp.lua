return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "glepnir/lspsaga.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
      "hrsh7th/nvim-cmp",
      dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/vim-vsnip",
        "hrsh7th/vim-vsnip-integ",
        "rafamadriz/friendly-snippets",
        "onsails/lspkind.nvim",
      }
    }
  },
  config = function()
    require('lsp.handler')
  end
}
