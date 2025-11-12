return {
	{
		"saghen/blink.cmp",

		dependencies = { "rafamadriz/friendly-snippets" },

		version = "1.*",

		opts = {

			keymap = {
				preset = "default",
				--
				["<C-j>"] = { "select_next", "fallback" },
				["<C-k>"] = { "select_prev", "fallback" },
				["<CR>"] = { "accept", "fallback" },
				["<Tab>"] = {
					"snippet_forward",
					function() -- sidekick next edit suggestion
						return require("sidekick").nes_jump_or_apply()
					end,
					"fallback",
				},
			},

			completion = {
				documentation = { auto_show = false },
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},

			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
}
