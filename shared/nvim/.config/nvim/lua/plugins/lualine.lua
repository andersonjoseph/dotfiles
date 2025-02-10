return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup {
      options = {
	theme = "lackluster",
	icons_enabled = true,
	filetype = { colored = true },
      },

      sections = {
	lualine_a = {'mode'},
	lualine_b = {'buffers'},
	lualine_c = {'diagnostics'},

	lualine_x = {'branch', "diagnostics"},
      }

    }

  end;
}
