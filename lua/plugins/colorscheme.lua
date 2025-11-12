return {
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	opts = {
	-- 		flavour = "mocha",
	-- 		integrations = { blink_cmp = true },
	-- 	},
	-- 	config = function()
	-- 		require("catppuccin").setup(opts)
	-- 		vim.cmd.colorscheme("catppuccin")
	-- 	end,
	-- },
	-- --
	-- {
	-- 	"neanias/everforest-nvim",
	-- 	name = "everforest",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	-- 		integrations = { blink_cmp = true },
	-- 	},
	-- 	config = function()
	-- 		require("everforest").setup(opts)
	-- 		vim.cmd.colorscheme("everforest")
	-- 	end,
	-- },
	{
		"ribru17/bamboo.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("bamboo").setup({
				-- optional configuration here
			})
			require("bamboo").load()
		end,
	},
}
