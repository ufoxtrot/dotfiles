return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = { 'nvim-treesitter/nvim-treesitter-context', 'windwp/nvim-ts-autotag' },
  config = function()
    local ensure_installed = {
      "markdown",
      "markdown_inline",
      "toml",
      "fish",
      "bash",
      "json",
      "yaml",
      "css",
      "html",
      "lua",
      "tsx",
      "javascript",
      "glsl",
      "gdscript"
    }

    require 'treesitter-context'.setup { max_lines = 1 }
    require('nvim-treesitter.configs').setup {
      ensure_installed = ensure_installed,
      autopairs = {
        enable = true,
      },
      autotag = {
        enable = true,
      }
    }
  end
}
