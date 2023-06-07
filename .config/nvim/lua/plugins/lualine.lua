return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '',
        section_separators = '',
        always_divide_middle = true,
        globalstatus = true,
        -- disabled_filetypes = { statusline = { "NvimTree" } },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'filename' },
        lualine_c = {},
        lualine_x = { 'searchcount' },
        lualine_y = { { 'filetype', icon_only = true }, 'diagnostics', 'tabs' },
        lualine_z = { "os.date('羽%I:%M -  %d %A')" }
      }
    }
  end
}
