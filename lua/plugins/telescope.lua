return {
	 'nvim-telescope/telescope.nvim', tag = '0.1.8',
	 config = function()
		  require("telescope").setup({
				defaults = {
					 path_display = { "smart" },
					 file_ignore_patterns = {".venv", "node_modules", ".git"}
				},
				extensions = {
					 fzf = {
						  fuzzy = true,
						  override_generic_sorter = true,
						  override_file_sorter = true,
						  case_mode = "smart_case"
					 }
				}
		  })
	 end,
	 dependencies = { 'nvim-lua/plenary.nvim', 'telescope-fzf-native.nvim'}
}
