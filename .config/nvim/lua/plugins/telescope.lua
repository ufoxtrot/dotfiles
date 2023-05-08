return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'xiyaowong/telescope-emoji.nvim', 'debugloop/telescope-undo.nvim' },
    lazy = true,
    config = function()
      require("telescope").load_extension("emoji")
      require("telescope").load_extension("undo")

      require('telescope').setup{
        defaults = {
          prompt_prefix = "   ",
          selection_caret = " ⇾  ",
          path_display = { "smart" },
          initial_mode = "normal",
          layout_strategy = "vertical",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.70,
              results_width = 0.4,
            },
            vertical = {
              mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },
          file_sorter = require("telescope.sorters").get_fuzzy_file,
          File_ignore_patterns = { "node_modules" },
          generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
          winblend = 0,
          mappings = { n = { ["q"] = require("telescope.actions").close } }
        }
      }
    end
  },
  {
    "ziontee113/icon-picker.nvim",
    dependencies = { 'stevearc/dressing.nvim' },
    config = function()
      require("icon-picker").setup({
        disable_legacy_commands = true
      })
    end
  },
  {
    'ziontee113/color-picker.nvim',
    config = function()
      require("color-picker").setup()
      vim.cmd([[hi FloatBorder guibg=NONE]])
    end,
  }
}
