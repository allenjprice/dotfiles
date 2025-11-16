return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {},
	config = function()
		local wk = require("which-key")

		wk.add({
			-- TODO: more groups! more labels!
			{ "<leader>f", group = "Find..." },
			{ "<leader>b", group = "Buffers..." },
		})
	end,
}
