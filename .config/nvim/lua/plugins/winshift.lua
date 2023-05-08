return {
  'sindrets/winshift.nvim',
  cmd = 'WinShift',
  config = function()
    require("winshift").setup{
      window_picker = function()
        return require("winshift.lib").pick_window({
          picker_chars = "aoeui",
          filter_rules = {
            cur_win = true,
            floats = true,
            filetype = { 'NvimTree' },
            buftype = {},
            bufname = {},
          },
        })
      end
    }
  end
}
