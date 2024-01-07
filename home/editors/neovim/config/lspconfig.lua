local lspc = require("lspconfig")

local null_ls = require("null-ls")

local lsp_zero = require("lsp-zero")



lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


lsp_zero.setup_servers({
	'rust_analyzer',
	'lua_ls', 
	'rnix', 
	'pyright', 
	'kotlin_language_server',
	'java_language_server',
	"gradle_ls",
	'cssls',
	'ccls',
})
