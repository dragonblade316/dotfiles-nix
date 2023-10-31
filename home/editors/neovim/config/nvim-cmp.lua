local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')


--for cmp-spell
vim.opt.spell = true
vim.opt.spelllang = { 'en_us' }

cmp.setup(
  {
    sources = {
      {name = 'nvim_lsp'},
			{name = 'cmp-tabnine'},
      {name = 'spell'},
      {name = 'buffer'},
			{name = 'treesitter'},
			{name = 'path'},
    },

    mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    --['<C-f>'] = cmp_action.luasnip_jump_forward(),
    --['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-j>'] = cmp.mapping.scroll_docs(-4),
    ['<C-k>'] = cmp.mapping.scroll_docs(4),
    })
  }
)


-- cmp.event:on(
-- 	'confirm_done',
-- 	cmp_autopairs.on_confirm_done()
-- )
--
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })

