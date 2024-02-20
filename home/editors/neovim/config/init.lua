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



vim.opt.spell = true
vim.opt.spelllang = { 'en_us' }
