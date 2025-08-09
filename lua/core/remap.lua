vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>sr", ":%s/")
vim.keymap.set("v", "<leader>sr", ":s/")
vim.keymap.set("n", "<leader>v", "<C-v>")

vim.keymap.set("n", "<C-k>", ":vincmd k<CR>", { desc = "Go up a nvim window" })
vim.keymap.set("n", "<C-j>", ":vincmd j<CR>", { desc = "Go down a nvim window" })
vim.keymap.set("n", "<C-h>", ":vincmd h<CR>", { desc = "Go left a nvim window" })
vim.keymap.set("n", "<C-l>", ":vincmd l<CR>", { desc = "Go right a nvim window" })

vim.keymap.set('n', "<leader>fm", ":Vifm<cr>", { desc = "Open Vifm" })

vim.keymap.set('v', '<C-a>', ':s/\\%V\\d\\+\\%V/\\=submatch(0)+1/g<CR>', { desc = 'Increment numbers in selection' })
vim.keymap.set('v', '<C-x>', ':s/\\%V\\d\\+\\%V/\\=submatch(0)-1/g<CR>', { desc = 'Decrement numbers in selection' })
