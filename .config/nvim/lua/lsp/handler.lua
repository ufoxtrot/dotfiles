local signs = {
  { name = "DiagnosticSignError", text = "✘" },
  { name = "DiagnosticSignWarn",  text = "▲" },
  { name = "DiagnosticSignHint",  text = "⚑" },
  { name = "DiagnosticSignInfo",  text = "" },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

vim.diagnostic.config {
  virtual_text = { prefix = "● " },
  update_in_insert = true,
  signs = false,
  underline = false,
}

require("lspsaga").setup()
require('lsp.completion')
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
local keymaps = require('lsp.keymaps')

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {
      on_attach = keymaps.on_attach,
      capabilities = capabilities,
      settings = require("lsp.servers." .. server_name),
    }
  end
}
