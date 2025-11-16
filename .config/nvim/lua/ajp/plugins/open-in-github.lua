return {
	"almo7aya/openingh.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local openingh = require("openingh")

		local keymap = vim.keymap

		keymap.set({ "n", "v" }, "<leader>ogr", ":OpenInGHRepo<CR>", { desc = "Open in GitHub: Repo" })
		keymap.set({ "n", "v" }, "<leader>ogf", ":OpenInGHFile<CR>", { desc = "Open in GitHub: File" })
		keymap.set({ "n", "v" }, "<leader>ogl", ":OpenInGHFileLines<CR>", { desc = "Open in GitHub: Lines" })

		openingh.setup()
	end,
}
