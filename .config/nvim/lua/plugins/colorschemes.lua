return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require('rose-pine').setup {
      disable_background = true,
      disable_float_background = false,
      highlight_groups = {
        ColorColumn = { bg = 'rose' },
        CursorLine = { bg = 'foam', blend = 10 },
        StatusLine = { fg = 'love', bg = 'love', blend = 10 },
      }
    }
  end
}
