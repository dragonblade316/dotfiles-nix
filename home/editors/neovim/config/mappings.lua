vim.g.mapleader = " "

--this folder also contains which-key config
local wk = require("which-key")

wk.setup({})

wk.register({
  ["<leader>"] = {
		["/"] = {"<cmd> '<,'>CommentToggle <cr>", "should probably be removed"},
		r = {"<cmd> Trouble <cr>", "Trouble"},
		e = {"<cmd> NvimTreeToggle <cr>", "Filetree"}, 
		t = {
			t = {"cmd Telescope <cr>", "telescope"},
		},
		a = {"<cmd> CodeActionMenu <cr>", "Code Actions"},
  },
})

--idk why this uses vim.api.nvim_set_keymap but I'm too 
local cmap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

cmap('n', '<S-h>', '<Cmd>BufferPrevious<CR>', opts)
cmap('n', '<S-l>', '<Cmd>BufferNext<CR>', opts)

local map = vim.keymap.set

local flash = require("flash")

--map('n', 's', '<cmd>flash.jump()<CR>', opts

map({'n', 'x', 'o'}, "s", function() flash.jump() end)
--add more flash mappings here later



