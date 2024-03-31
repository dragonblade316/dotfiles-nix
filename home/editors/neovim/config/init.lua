require("lualine").setup()
--require("startup").setup()
require("flash").setup()
require("Comment").setup()
require("telescope").setup()
require("nvim-tree").setup()
require("barbar").setup()
require("nvim-autopairs").setup()
require("trouble").setup()
require("better_escape").setup()
-- this is causing treesitter query errors for some reason
-- require("noice").setup()
require("auto-save").setup()
require("neogit").setup()
-- require("iron.core").setup {
-- 	config = {
-- 		scratch_repl = true,
--
-- 		-- Whether a repl should be discarded or not
--     		scratch_repl = true,
--     		-- Your repl definitions come here
--     		repl_definition = {
--       			sh = {
--         			-- Can be a table or a function that
--         			-- returns a table (see below)
--         			command = {"zsh"}
--       			}
--     		},
--     		-- How the repl window will be displayed
--     		-- See below for more information
--     		repl_open_cmd = require('iron.view').bottom(40),
-- 	}
-- }
--


vim.opt.spell = true
vim.opt.spelllang = { 'en_us' }
