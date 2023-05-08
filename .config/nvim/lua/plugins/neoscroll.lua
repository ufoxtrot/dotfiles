return {
  'karb94/neoscroll.nvim',
  lazy = true,
  config = function()
    require('neoscroll').setup{
      hide_cursor = true,
      stop_eof = true,
      respect_scrolloff = true,
      cursor_scrolls_alone = true,
    }
  end
}
