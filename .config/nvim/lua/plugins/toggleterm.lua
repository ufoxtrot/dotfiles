return {
  "akinsho/toggleterm.nvim",
  config = function()
    if jit.os == 'Windows' then
      vim.opt.shell = 'pwsh'
      vim.opt.shellcmdflag =
      "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
      vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
      vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
      vim.opt.shellquote = ""
      vim.opt.shellxquote = ""
    end
    require("toggleterm").setup {
      hide_numbers = true,
      auto_scroll = true,
      open_mapping = [[<c-\>]],
      shell = vim.opt.shell,
      start_in_insert = true,
      persist_size = true,
    }
    local Terminal = require('toggleterm.terminal').Terminal
    local node = Terminal:new({ cmd = 'node', hidden = true })

    function RUN_NODE()
      node:toggle()
    end

    vim.api.nvim_buf_set_keymap(0, 'n', ';n', '<Cmd>lua RUN_NODE()<CR>', {})
  end
}
