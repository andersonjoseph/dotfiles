return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function()
      local lsp_zero = require('lsp-zero')

      lsp_zero.on_attach(function(client, bufnr)
	-- lsp_zero.default_keymaps({buffer = bufnr})

	vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')

	vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
	vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')

	vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
	vim.keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')

	vim.keymap.set('n', '<leader>vr', '<cmd>lua vim.lsp.buf.references()<CR>')
	vim.keymap.set('n', '<leader>vd', '<cmd>lua vim.diagnostic.open_float()<CR>')
      end)

      lsp_zero.set_sign_icons({
	error = '🞫',
	warn = '▲',
	hint = '⚑',
	info = '»'
      })

      -- here you can setup the language servers
    end
  },
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup({})
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_lspconfig()

      require('mason-lspconfig').setup({
	ensure_installed = {'tsserver', 'gopls'},
	handlers = {
	  function(server_name)
	    require('lspconfig')[server_name].setup({})
	  end,
	},
      })
    end
  },
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-nvim-lsp-signature-help'},
  {
    'hrsh7th/nvim-cmp',
    config = function()
      local cmp = require('cmp')
      local cmp_action = require('lsp-zero').cmp_action()

      cmp.setup({
	sources = {
	  {name = 'path'},
	  {name = 'nvim_lsp'},
	  {name = "nvim_lsp_signature_help"},
	  {name = 'luasnip', keyword_length = 2},
	  {name = 'buffer', keyword_length = 3},
	},
	preselect = 'item',
	completion = {
	  completeopt = 'menu,menuone,noinsert'
	},
	mapping = cmp.mapping.preset.insert({
	  ['<CR>'] = cmp.mapping.confirm({select = false}),
	  ['<Tab>'] = cmp_action.luasnip_supertab(),
	  ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
	}),
	snippet = {
	  expand = function(args)
	    require('luasnip').lsp_expand(args.body)
	  end,
	},
      })
    end
  },
  {'L3MON4D3/LuaSnip'},
}
