return {
	 "neovim/nvim-lspconfig",
	 dependencies = {
		  "mason.nvim",
		  {
				"folke/lazydev.nvim",
				ft = "lua",
				opts = {
					 library = {
						  { path = "${3rd}/luv/library", words = {"vim%.uv"} },
					 }
				}
		  }
	 },
	 event = "LspAttach",
	 init = function ()
		  vim.lsp.set_log_level("error")
		  vim.diagnostic.config({
				underline = true,
				severity_sort = true,
				virtual_text = true,
				signs = false
		  })
	 end,
	 config = function ()
		  require("lspconfig.ui.windows").default_options.border = "rounded"
	 end
}
