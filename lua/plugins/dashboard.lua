local version = vim.version()

local header = {
'                                                                   ',
'      ████ ██████           █████      ██                    ',
'     ███████████             █████                            ',
'     █████████ ███████████████████ ███   ███████████  ',
'    █████████  ███    █████████████ █████ ██████████████  ',
'   █████████ ██████████ █████████ █████ █████ ████ █████  ',
' ███████████ ███    ███ █████████ █████ █████ ████ █████ ',
'██████  █████████████████████ ████ █████ █████ ████ ██████',
''
}

local center = {
	 {
		  desc = "Find File ",
		  key = "f",
		  icon = " ",
		  action = "Telescope find_files",
		  group = "@markup.heading.1.markdown",
	 },
	 {
		  desc = "Exit ",
		  key = "q",
		  icon = " ",
		  action = "exit",
		  group = "@markup.heading.6.markdown",
	 },
}

local footer = {
	 "",
	 "Nvim Version " .. version.major .. "." .. version.minor,
}
return {
	 'nvimdev/dashboard-nvim',
	 event = 'VimEnter',
	 config = function()
		  require('dashboard').setup {
				config = {
					 header = header,
					 shortcut = center,
					 footer = footer,
					 packages = { enable = false },
					 mru = {
						  enable = true,
						  limit = 5
					 }
				}
		  }
	 end,
	 dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
