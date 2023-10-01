require("lualine").setup()
--require("startup").setup()
require('leap').add_default_mappings() --basically just setup()
require("Comment").setup()
require("telescope").setup()
require("nvim-tree").setup()
require("barbar").setup()
require("nvim-autopairs").setup()


vim.opt.spell = true
vim.opt.spelllang = { 'en_us' }
