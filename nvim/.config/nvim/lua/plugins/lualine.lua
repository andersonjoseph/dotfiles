return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local kanagawa_paper = require("lualine.themes.kanagawa-paper")

    require('lualine').setup {
      options = {
	theme = kanagawa_paper,
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
