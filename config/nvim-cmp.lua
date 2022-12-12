vim.cmd('set completeopt=menu,menuone,noselect')
-- Setup nvim-cmp.
local cmp = require'cmp'
local lspkind = require('lspkind')

cmp.setup({
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping(function(fallback)
  	  if cmp.visible() then
  		cmp.select_next_item()
  	  elseif vim.fn["vsnip#available"](1) == 1 then
  		feedkey("<Plug>(vsnip-expand-or-jump)", "")
  	--  elseif cmp.has_words_before() then
  	--	cmp.complete()
  	  else
  		fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
  	  end
  	end, { "i", c = cmp.config.disable, "s" }),

    ["<S-Tab>"] = cmp.mapping(function()
      if cmp.visible() then
    	cmp.select_prev_item()
      elseif vim.fn["vsnip#jumpable"](-1) == 1 then
    	feedkey("<Plug>(vsnip-jump-prev)", "")
      end
    end, { "i", "s" }),
	['<Down>'] = cmp.mapping(cmp.mapping.select_next_item({
      behavior = cmp.SelectBehavior.Select
    }), {'i', c = cmp.config.disable}),
    ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item({
      behavior = cmp.SelectBehavior.Select
    }), {'i', c = cmp.config.disable}),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' }, -- For vsnip users.
	{ name = 'path' }
    -- { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function (entry, vim_item)
        return vim_item
      end
    })
  }
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(), -- important!
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(), -- important!
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local navic = require("nvim-navic")
local on_attach = function(client, bufnr)
        navic.attach(client, bufnr)
    end
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['clangd'].setup {
  capabilities = capabilities,
  on_attach = on_attach
}
require('lspconfig')['pyright'].setup {
  capabilities = capabilities,
  on_attach = on_attach
}
require('lspconfig')['bashls'].setup {
  capabilities = capabilities,
  on_attach = on_attach
}
require('lspconfig')['gopls'].setup {
  capabilities = capabilities,
  on_attach = on_attach
}
