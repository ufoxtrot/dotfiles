local set = vim.opt

-- leader
vim.keymap.set('', '<Space>', '<Nop>')
vim.g.mapleader = " "
vim.g.maplocalleader = " "

set.number = true
set.cursorline = true
set.wrap = false
set.termguicolors = true
set.title = true
set.scrolloff = 5
set.sidescrolloff = 8
set.mouse= 'a'

set.splitbelow = true
set.splitright= true
set.inccommand= "split"
vim.api.nvim_set_hl(0, 'WinSeparator', { bg = 'None' })

set.shell = 'pwsh'
-- set.shellcmdflag = '-nol'

set.clipboard = 'unnamedplus'
set.iskeyword:append("-")
set.path:append { '**' }

set.timeout = true
set.timeoutlen = 200

set.completeopt= { 'menuone', 'noinsert', 'noselect' }
set.wildmenu = true
set.winblend = 0
set.wildoptions = 'pum'
set.pumblend = 0

set.showcmd = false
set.cmdheight = 0
set.laststatus = 2
set.autochdir = true
set.hidden = true
set.belloff = "all"

set.smarttab = true
set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2

set.breakindent = true
set.smartindent = true
set.ignorecase = true
set.foldexpr = "nvim_treesitter#foldexpr()"

-- undo & history
set.undofile = true
set.undolevels = 100
set.undoreload = 10000

set.swapfile = false
set.backup = false
set.backupskip = { '/tmp/*', '/private/tmp/*' }
set.backspace = { 'start', 'eol', 'indent' }
set.sessionoptions:remove { 'buffers', 'folds' }

set.wildignore:append { '*/node_modules/*' }

set.formatoptions = table.concat { '2', 'q', 'j', 'r', 'o', 'c', }
set.shortmess:append { I = true, W = true, a = true, c = true, F = true, s = true, }

-- Neovide Configurations
if vim.g.neovide then
  vim.g.neovide_transparency = 0.9
  vim.g.neovide_scroll_animation_length = 1.3
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
end


