return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'super-tab' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
		  documentation = {
				auto_show = true ,
				auto_show_delay_ms = 200,
				window = {
					 border = "rounded",
					 winblend = 0,
					 winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
				}
		  },
		  menu = {
				winblend = 0,
				border = "rounded",
				winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
				draw = {
					 columns = {
						  {"kind_icon"},
						  {"label", "label_description", gap = 1, "kind"},
					 },
					 components = {
						  kind_icon = {
							 text = function(ctx)
								local lspkind = require("lspkind")
								local icon = ctx.kind_icon
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
									 local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
									 if dev_icon then
										  icon = dev_icon
									 end
								else
									 icon = require("lspkind").symbolic(ctx.kind, {
										  mode = "symbol",
									 })
								end

								return icon .. ctx.icon_gap
							 end,

							 highlight = function(ctx)
								local hl = ctx.kind_hl
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
								  local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
								  if dev_icon then
									 hl = dev_hl
								  end
								end
								return hl
							 end,
						  }
					 }
				}
		  },
		  trigger = {
				show_on_trigger_character = true
		  }
	 },
    sources = {
      default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
	   providers = {
			 lazydev = {
				name = "LazyDev",
				module = "lazydev.integrations.blink",
				score_offset = 100,
			 },
	    },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" }
}
