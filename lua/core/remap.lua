vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set('n', "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', "<leader>w", vim.cmd.w, { desc = "write" })
vim.keymap.set('n', "<leader>q", vim.cmd.q, { desc = "quit" })
vim.keymap.set('n', "<leader>sr", ":%s/", { desc = "search and replace" })
vim.keymap.set('v', "<leader>sr", ":s/", { desc = "search and replace" })
vim.keymap.set('n', "<leader>v", "<C-v>", { desc = "visual block mode" })
vim.keymap.set('n', "<C-k>", "O<esc>j", { desc = "append empty line above" })
vim.keymap.set('n', "<C-j>", "o<esc>k", { desc = "append empty line below" })
vim.keymap.set('i', "<C-k>", "<esc>Oj", { desc = "append empty line above" })
vim.keymap.set('i', "<C-j>", "<esc>ok", { desc = "append empty line below" })
vim.keymap.set('n', "o", "A<CR><esc>", { desc = "append empty line below and jump" })
vim.keymap.set('n', "O", "kA<CR><esc>", { desc = "append empty line below and jump" })

vim.keymap.set('n', "<leader>fm", ":Vifm<cr>", { desc = "Open Vifm" })

vim.keymap.set('v', '<C-a>', ':s/\\%V\\d\\+\\%V/\\=submatch(0)+1/g<CR>', { desc = 'Increment numbers in selection' })
vim.keymap.set('v', '<C-x>', ':s/\\%V\\d\\+\\%V/\\=submatch(0)-1/g<CR>', { desc = 'Decrement numbers in selection' })
