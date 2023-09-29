vim.g.mapleader = " "

--this folder also contains which-key config
local wk = require("which-key")

wk.setup({})

wk.register({
  ["<leader>"] = {
    ["/"] = {"<cmd> '<,'>CommentToggle <cr>"}

  },
})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<S-h>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<S-l>', '<Cmd>BufferNext<CR>', opts)
