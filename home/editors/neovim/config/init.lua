vim.cmd('set number')

require("lualine").setup()
--require("startup").setup()
require('leap').add_default_mappings() --basically just setup()
require("Comment").setup()
require("telescope").setup()
require("nvim-tree").setup()

