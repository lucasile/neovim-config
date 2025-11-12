return {
	{
		"mason-org/mason-lspconfig.nvim",

		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},

		opts = {
			automatic_enable = true,
			ensure_installed = {
				"lua_ls",
				"copilot",
				"svelte",
				"vtsls",
				"tailwindcss",
				"cssls",
				"html",
				"basedpyright",
				"ruff",
			},
		},

		config = function(_, opts)
			local mason_lsp = require("mason-lspconfig")
			local blink_caps = require("blink.cmp").get_lsp_capabilities()

			mason_lsp.setup(opts)

			for _, server in ipairs(mason_lsp.get_installed_servers()) do
				vim.lsp.config(server, {
					capabilities = blink_caps,
					on_attach = function(_, bufnr)
						local map = function(mode, lhs, rhs)
							vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true })
						end
						map("n", "K", vim.lsp.buf.hover)
						map("n", "gd", vim.lsp.buf.definition)
						map("n", "gr", vim.lsp.buf.references)
						map("n", "<leader>rn", vim.lsp.buf.rename)
						map("n", "<leader>ca", vim.lsp.buf.code_action)
					end,
				})
				vim.lsp.enable(server)
			end
		end,
	},
}
