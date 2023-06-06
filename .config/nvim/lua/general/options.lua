local set = vim.opt

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

set.number = true
set.cursorline = true
set.wrap = false
set.termguicolors = true
set.title = true
set.mouse= 'a'

set.shell = 'pwsh.exe'
-- set.shellcmdflag = '-nol'

set.scrolloff = 5
set.sidescrolloff = 8

set.splitbelow = true
set.splitright= true
set.inccommand= "split"


set.clipboard = 'unnamedplus'
set.iskeyword:append("-")
set.path:append { '**' }

set.timeout = true
set.timeoutlen = 400

set.completeopt= { 'menuone', 'noinsert' }
set.pumblend = 0

set.showcmd = false
set.cmdheight = 0
set.laststatus = 2
set.wildmenu = true
set.wildoptions = 'pum'
set.winblend = 0
set.belloff = "all"

set.autochdir = true
set.hidden = true

set.smarttab = true
set.expandtab = true
set.shiftwidth = 2
set.tabstop = 2

set.breakindent = true
set.smartindent = true
set.autoindent = true
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

set.shortmess:append { I = true, W = true, a = true, c = true, F = true, s = true, }

-- Neovide Configurations

if vim.g.neovide then
  vim.g.neovide_transparency = 0.9
  vim.g.neovide_scroll_animation_length = 1.3
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
end


