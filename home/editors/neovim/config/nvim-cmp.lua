local cmp = require('cmp')

cmp.setup(
  {
    sources = {
      {name = 'nvim_lsp'},
      {name = 'cmp-spell'},
      {name = 'cmp-buffer'},
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
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    })
  }
)
