return {
  'kylechui/nvim-surround',
    lazy = true,
  config = function()
    require('nvim-surround').setup({
      aliases = {
        ["b"] = { ")", "]", "}" },
        ["q"] = { '"', "'", "`" },
      },
    })
  end
}
