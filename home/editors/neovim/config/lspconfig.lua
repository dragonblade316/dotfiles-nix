local lspc = require("lspconfig")
local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

--lspc.rust_analyzer.setup({})

lsp_zero.setup_servers({'lua_ls', "rust_analyzer", 'rnix'})
