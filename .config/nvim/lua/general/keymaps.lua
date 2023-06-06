local map = function(mode, lhs, rhs)
	local opts = { noremap = true, silent = true }
	vim.keymap.set(mode, lhs, rhs, opts)
end

-- File Actions
map("n", "<C-q>", ":q!<cr>")
map("n", "<C-s>", "::w<cr>")
map("n", "<C-/>", "gcc")
map("n", "<C-t>", ":tabnew<cr>")
map("n", "<C-o>", "gg<S-v>G")
map("n", "<C-f>", "=G<cr>")
map("n", "<leader>f", "vim.lsp.buf.format")
map("n", "<C-c>", ":echo<cr>:nohlsearch<cr>")

-- Plugin Actions
map("n", "<C-b>", ":NvimTreeToggle<cr>")
map("n", "T", ":ToggleTerm direction=float<cr>")
map("n", "<C-]>", ":ToggleTerm<cr>")
map("n", "<C-i>", ":IconPickerYank<cr>")
map("n", "<C-p>", ":Telescope<cr>")
map("n", "<leader>u", ":Telescope undo<cr>")
map("n", "<leader>i", ":IconPickerYank<cr>")
map("n", "<leader>c", ":PickColor<cr>")
map("n", "<leader>d", ":IndentBlanklineToggle<cr>")
map("n", "<leader>t", ":TroubleToggle<cr>")
map("n", "<leader>b", ":TodoTrouble<cr>")

-- Language Server
map("n", "<leader>a", ":Lspsaga code_action")
map("n", "<leader>p", ":Lspsaga peek_definition")
map("n", "<leader>r", ":Lspsaga code_action")

-- Shell
map("n", "<leader><leader>", ":<up><cr>")
map("n", "<Leader>s", ":edit $MYVIMRC<cr>")
map("n", "<leader>x", ":!chmod +x %<cr>")

-- Search and Replace
map("n", "<leader>sr", ":%s/\\<<c-r><c-w>\\>/")
map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
map("v", "<leader>s", ":s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")


----------------------------- SANE DEFAULTS, MAKE LIFE EASIER ---------------------------------]

-- Navigate Tabs
map("n", "<S-Tab>", "gT")
map("n", "<Tab>", "gt")

-- Line Actions
map("i", "<C-e>", "<esc>A")
map("i", "<C-a>", "<esc>I")
map("n", "L", "$")
map("n", "H", "^")
map("n", "Y", "y$")
map("n", "J", "mzJ`z")

-- Undo Break-Points
map("i", ",", ",<C-g>u")
map("i", ".", ".<C-g>u")
map("i", ";", ";<C-g>u")

-- Move ⬆️/↓
map("v", "K", ":m '<-2<cr>gv=gv")
map("v", "J", ":m '>+1<cr>gv=gv")
map("x", "J", ":move '>+1<cr>gv-gv")
map("x", "K", ":move '<-2<cr>gv-gv")
map("n", "<m-k>", ":m '<-2<cr>gv=gv")
map("n", "<m-j>", ":m '>+1<cr>gv=gv")
map("i", "<m-k>", ":m '<-2<cr>gv=gv")
map("i", "<m-j>", ":m '>+1<cr>gv=gv")

-- Split
map("n", "sv", ":vsplit<Return><C-m>m")
map("n", "ss", ":split<Return><C-m>m")

-- Window Navigation
map("n", "<A>", "<C-w>w")
map("n", "|", "<C-w>w")
map("", "sh", "<C-w>h")
map("", "sk", "<C-w>k")
map("", "sj", "<C-w>j")
map("", "sl", "<C-w>l")

-- Resize Window
map("n", "<Up>", ":resize +2<cr>")
map("n", "<Down>", ":resize -2<cr>")
map("n", "<Left>", ":vertical resize -2<cr>")
map("n", "<Right>", ":vertical resize +2<cr>")

-- Make Life More Accessible
map("i", "jk", "<esc>")
map("i", "kj", "<esc>")
map("t", "<esc>", [[<c-\><c-n>]])
map("t", "jk", [[<c-\><c-n>]])

map("n", ";", ":")
map("c", "<c-a>", "<home>")

map("", "qq", "")
map("", "<Space>", "<Nop>")

map("n", "o", "o<ESC>")
map("n", "O", "O<ESC>")
map("n", "x", '"_x')
map("x", "x", '"_x')
map("x", "p", "P")
map("v", "p", '"_dP')

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
