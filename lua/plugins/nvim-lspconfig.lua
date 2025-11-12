return {
	{
		"neovim/nvim-lspconfig",

		dependencies = {
			"mason-org/mason.nvim",
			"mason-org/mason-lspconfig.nvim",
			"saghen/blink.cmp",
		},

		lazy = true,

		init = function()
			local lspConfigPath = require("lazy.core.config").options.root .. "/nvim-lspconfig"
			vim.opt.runtimepath:prepend(lspConfigPath)
		end,
	},
}
