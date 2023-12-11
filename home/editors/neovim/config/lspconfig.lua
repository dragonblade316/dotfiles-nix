local lspc = require("lspconfig")

local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

--
--rust spesific stuff
--local rust_tools = require('rust-tools')

-- rust_tools.setup({
--   server = {
--     on_attach = function(client, bufnr)
--       vim.keymap.set('n', '<leader>ca', rust_tools.hover_actions.hover_actions, {buffer = bufnr})
--     end
--   }
-- })
--
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
