vim.g.mapleader = " "

local wk = require("which-key")

wk.setup({})

wk.register({
  ["<leader>"] = {
    ["/"] = {"<cmd> '<,'>CommentToggle <cr>"}

  },
})
