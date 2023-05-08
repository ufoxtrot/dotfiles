return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects', 'nvim-treesitter/nvim-treesitter-context', 'windwp/nvim-ts-autotag'},
  config = function()

    local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
    parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

    require'treesitter-context'.setup()
    require('nvim-treesitter.configs').setup{
      ensure_installed = {
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
      },
      indent = {
        enable = true,
      },
      autopairs = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
            ["as"] = "@scope",
          }
        },
      }
    }
  end
}
