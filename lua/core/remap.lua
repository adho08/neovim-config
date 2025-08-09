vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "C-q", ":q<CR>")
vim.keymap.set("n", "C-Q", ":q!<CR>")
vim.keymap.set("n", "<leader>sr", ":%s/")
vim.keymap.set("v", "<leader>sr", ":s/")
vim.keymap.set("n", "<leader>v", "<C-v>")

vim.keymap.set("n", "<C-k>", ":vincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":vincmd j<CR>")
vim.keymap.set("n", "<C-h>", ":vincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":vincmd l<CR>")
