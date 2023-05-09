-- @sumi
-- My Custome Neovim Dotfiles, Stolen from across the Web 🎇

-- Folder Structure ---------|
-- ./lua/general/
-- ./lua/plugins/
-- ./lua/lsp/
-- ./lua/utils/

-- Sourcing Configs
require('utils.disabled')
require('general.options')
require('utils.lazy')
require('general.keymaps')
require('general.autocmds')
require('general.colorscheme')
