vim.g.mapleader = " "

local keymap = vim.keymap

-- general

-- quick escape sequence
keymap.set("i", "fd", "<ESC>", { desc = "Exit insert mode with fd" })

-- search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>wh", "<C-w><C-h>", { desc = "Go to left window" })
keymap.set("n", "<leader>wl", "<C-w><C-l>", { desc = "Go to right window" })
keymap.set("n", "<leader>wj", "<C-w><C-j>", { desc = "Go to above window" })
keymap.set("n", "<leader>wk", "<C-w><C-k>", { desc = "Go to below window" })
keymap.set("n", "<leader>wd", "<cmd>close<CR>", { desc = "Close current window" })
keymap.set("n", "<leader>w/", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>w-", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>w=", "<C-w>=", { desc = "Balance windows" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
