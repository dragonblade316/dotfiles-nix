local dap = require("dap")

dap.adapters.codelldb = {
  type = 'server',
  port = '13000',
  host = '127.0.0.1',
  executable = {
    command = '${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode.lldb/adapter/codelldb',
    args = { '--port', '13000' },
  },
}

--I want to use gdb for c/cpp debugging 
-- dap.adapters.gdb = {
--   type = "executable",
--   command = "gdb",
--   args = { "-i", "dap" }
-- }
--
-- dap.configurations.c = {
--   {
--     name = "Launch",
--     type = "gdb",
--     request = "launch",
--     program = function()
--       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--     end,
--     cwd = "${workspaceFolder}",


dap.configurations.rust = {
	name = "Rust",
	type = "lldb",
	request = "launch",
      program = function()
          return vim.fn.getcwd() .. "/target/debug/hello-dap"
      end,
  cwd = "${workspaceFolder}",
  stopOnEntry = false,
}
