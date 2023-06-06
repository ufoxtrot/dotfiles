return {
  'norcalli/nvim-colorizer.lua',
  ft = { 'css', 'html' },
  config = function()
    require('colorizer').setup()
  end
}
