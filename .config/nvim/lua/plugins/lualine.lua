return {
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup{
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = '⎸',
          section_separators = '',
          always_divide_middle = false,
          globalstatus = true,
          disabled_filetypes = { statusline = { "NvimTree" } },
        },

        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', {'filetype', icon_only = true}, 'filename' },
          lualine_c = {},
          lualine_x = { 'searchcount' },
          lualine_y = { {'filetype', icon = ''}, 'diagnostics', 'tabs' },
          lualine_z = { "os.date('羽%I:%M -  %d %A')" }
        },
        inactive_sections = {
          lualine_c = {},
        },
        extensions = {'nvim-tree', 'trouble'}
      }
    end
  }
}
