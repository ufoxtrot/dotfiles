local map = function(mode, lhs, rhs)
  local opts = { noremap = true, silent = true }
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- files
map('n', '<C-q>', ':q!<cr>')
map('n', '<C-s>', '::w<cr>')
map('n', '<C-S>z', ':redo<cr>')
map('n', '<C>z', ':undo<cr>')
map('n', '<C-f>', '=G<cr>')
map('n', '<C-o>', 'gg<S-v>G')

map('n', '<C-b>', ':NvimTreeToggle<cr>')
map('n', 'T', ':sp<cr>:terminal<cr>')
map('n', 'T>', ":ToggleTerm direction=float<cr>")
map('i', 'TT', ":ToggleTerm direction=float<cr>")


-- navigate tabs
map('n', '<S-Tab>', 'gT')
map('n', '<Tab>', 'gt')
map('n', '<C-t>', ':tabnew<cr>')
map('n', 'te', ':tabedit<cr>')

-- go to start/end of the line
map('i', '<C-e>', '<esc>A')
map('i', '<C-a>', '<esc>I')
map('n', 'L', '$')
map('n', 'H', '^')

-- source nvim || reload nvim
map('n', '<Leader>ve', '<cmd>edit $MYVIMRC<cr>')
map('n', '<leader>rr', ':source $MYVIMRC<cr>')
map("n", "<leader>x", "<cmd>!chmod +x %<cr>")

-- diagnostics
map("n", "<leader>f", 'vim.lsp.buf.format')

-- telescope
map('n', '<C-p>', ':Telescope<cr>')
map('n', '<C-k>', ':Telescope diagnostics<cr>')
map('n', '<leader>u', ':Telescope undo')

-- escape
map("i", "<C-c>", "<esc>")
map('i', 'jk', '<esc>')
map('i', 'kj', '<esc>')
map('t', '<esc>', [[<c-\><c-n>]])
map('t', 'jk', [[<c-\><c-n>]])
map('n', ';', ':')
map('c', '<c-a>', '<home>')

-- registers
map('', 'qq', '')
map('n', 'o', 'o<ESC>')
map('n', 'O', 'O<ESC>')
map('n', 'x', '"_x')
map('x', 'x', '"_x')
map("x", "p", "P")
map("n", "J", "mzJ`z")
map("n", "Y", "y$")
map('v', 'p', '"_dP')

-- add undo break-points
map("i", ",", ",<C-g>u")
map("i", ".", ".<C-g>u")
map("i", ";", ";<C-g>u")

-- move text up and down
map("v", "J", ":m '>+1<cr>gv=gv")
map("v", "K", ":m '<-2<cr>gv=gv")
map('x', 'J', ":move '>+1<cr>gv-gv")
map('x', 'K', ":move '<-2<cr>gv-gv")
map('n', '<M-j>', 'mz:m+<CR>`z')
map('n', '<M-k>', 'mz:m-2<CR>`z')
map('n', '<M-j>', ":m'>+<CR>`<my`>mzgv`yo`z")
map('n', '<M-k>', ":m'<-2<CR>`>my`<mzgv`yo`z")

-- split windows
map('n', 'sv', ':vsplit<Return><C-m>m')
map('n', 'ss', ':split<Return><C-m>m')

-- move to window
map('n', '|', '<C-w>w')
map('', 'sh', '<C-w>h')
map('', 'sk', '<C-w>k')
map('', 'sj', '<C-w>j')
map('', 'sl', '<C-w>l')

-- resize window
map('n', '<Up>', ':resize +2<cr>')
map('n', '<Down>', ':resize -2<cr>')
map('n', '<Left>', ':vertical resize -2<cr>')
map('n', '<Right>', ':vertical resize +2<cr>')

-- search and replace
map('n', '<leader>sr', ':%s/\\<<c-r><c-w>\\>/')
map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
map("v", "<leader>s", ":s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map('n', '<C-c>', ':echo<cr>:nohlsearch<cr>')
