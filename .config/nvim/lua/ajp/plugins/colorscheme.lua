return {
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = false,
			})

			-- fix background for nvimtree
			vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
