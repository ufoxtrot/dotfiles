-- Highlight Yanked Texts
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  command = "silent! lua vim.highlight.on_yank {higroup=(vim.fn['hlexists']('HighlightedyankRegion') > 0 and 'HighlightedyankRegion' or 'IncSearch'), timeout=500}",
})

-- Opens Diagnostic on Cursor Float
vim.api.nvim_create_autocmd("CursorHold,CursorHoldI", {
  pattern = "*",
  command = "lua vim.diagnostic.open_float(nil, {focus=false})",
})

-- Hide Cursorline in Insert mode
vim.api.nvim_create_autocmd({ 'InsertLeave', 'WinEnter' }, { command = 'set cursorline', group = group })
vim.api.nvim_create_autocmd({ 'InsertEnter', 'WinLeave' }, { command = 'set nocursorline', group = group })

vim.api.nvim_create_autocmd('WinEnter', {
  group = group,
  callback = function()
    if vim.fn.winnr '$' == 1 and vim.fn.win_gettype() == 'quickfix' then
      vim.cmd.q()
    end
  end,
})

-- Disable auto comment when insert new line after comment
vim.api.nvim_create_autocmd("bufEnter", {
  group = vim.api.nvim_create_augroup("FormatOptions", {}),
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove { "r", "o" }
  end,
})

-- Sane Defaults
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "qf", "help", "man", "lspinfo", "NvimTree" },
  command = "nnoremap <silent> <buffer> q :close<CR>",
})

vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false)
    end,
})

vim.api.nvim_create_autocmd({ 'FocusGained', 'BufEnter', 'CursorHold', 'CursorHoldI' }, {
  command = [[silent! if mode() != 'c' && !bufexists("[Command Line]") | checktime | endif]],
})

vim.api.nvim_create_autocmd('FileChangedShellPost', {
  group = group,
  command = [[echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None]],
})


local protocol = require('vim.lsp.protocol')

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
local enable_format_on_save = function(_, bufnr)
  vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })
  vim.api.nvim_create_autocmd("BufWritePre", {
    group = augroup_format,
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format({ bufnr = bufnr })
      vim.api.nvim_exec([[ function! TrimWhitespace() %s/\s\+$//e endfunction autocmd BufWritePre * call TrimWhitespace() ]], true)
    end,
  })
end
