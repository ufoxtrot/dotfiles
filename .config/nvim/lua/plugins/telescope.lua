return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'xiyaowong/telescope-emoji.nvim', 'debugloop/telescope-undo.nvim' },
  config = function()

    require("telescope").load_extension("undo")
    -- require("telescope").load_extension("emoji")

    require('telescope').setup {

      defaults = {
        prompt_prefix = "   ",
        selection_caret = " ⇾  ",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.70,
            results_width = 0.4,
          }
        },

        file_sorter = require("telescope.sorters").get_fuzzy_file,
        File_ignore_patterns = { "node_modules" },
        generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        mappings = { n = { ["q"] = require("telescope.actions").close } }
      }
    }
  end
}
