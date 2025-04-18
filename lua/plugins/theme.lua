return {
	 'tim3nd/github-nvim-theme',
	 name = 'github-theme',
	 branch = "feat-support_blink_cmp",
	 lazy = false, -- make sure we load this during startup if it is your main colorscheme
	 priority = 1000, -- make sure to load this before all the other start plugins
	 config = function()
		  require('github-theme').setup({
				options = {
					 darken = {
						  floats = false,
						  sidebars = {
								enable = false
						  }
					 }
				}
		  })

		  vim.cmd('colorscheme github_dark_default')
	 end,
}
