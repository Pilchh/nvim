return {
    "williamboman/mason-lspconfig.nvim",
    config = function()
		  local capabilities = require("blink.cmp").get_lsp_capabilities()
		  require("mason-lspconfig").setup({capabilities = capabilities})
		  require("mason-lspconfig").setup_handlers({
			 function (server_name) -- default handler (optional)
				 require("lspconfig")[server_name].setup({})
			 end,
		  })
    end
}
