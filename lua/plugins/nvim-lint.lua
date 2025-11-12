return {
	{
		"mfussenegger/nvim-lint", -- linting
		event = "BufReadPost",
		opts = {
			linters_by_ft = {
				lua = { "luacheck" },
				python = { "flake8" },
				javascript = { "eslint" },
				typescript = { "eslint" },
			},
		},
		config = function(_, opts)
			require("lint").linters_by_ft = opts.linters_by_ft
			-- Auto lint on save
			vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
}
