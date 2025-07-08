vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set('n', "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', "<leader>w", vim.cmd.w) -- write
vim.keymap.set('n', "<leader>q", vim.cmd.q) -- quit
vim.keymap.set('n', "<leader>sr", ":%s/") --search and replace
vim.keymap.set('v', "<leader>sr", ":s/")
vim.keymap.set('n', "<leader>v", "<C-v>") -- visual block mode

-- Open Vifm
vim.keymap.set('n', "<leader>fm", ":Vifm<cr>")

vim.keymap.set('v', '<C-a>', ':s/\\%V\\d\\+\\%V/\\=submatch(0)+1/g<CR>', { desc = 'Increment numbers in selection' })
vim.keymap.set('v', '<C-x>', ':s/\\%V\\d\\+\\%V/\\=submatch(0)-1/g<CR>', { desc = 'Decrement numbers in selection' })
