return {
	 'nvim-lualine/lualine.nvim',
	 config = function()
		  local transparent_theme = require("lualine.themes.auto")
		  transparent_theme.normal.c.bg = "None"
		  transparent_theme.insert.c.bg = "None"
		  transparent_theme.visual.c.bg = "None"
		  transparent_theme.replace.c.bg = "None"
		  transparent_theme.inactive.c.bg = "None"
		  require('lualine').setup {
				options = {
					 theme = transparent_theme
				}
		  }
	 end,
	 dependencies = { 'nvim-tree/nvim-web-devicons' }
}
