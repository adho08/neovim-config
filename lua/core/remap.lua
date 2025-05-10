vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>sr", ":%s/")
vim.keymap.set("n", "<leader>v", "<C-v>")
vim.keymap.set("n", "<leader>tb", function() vim.cmd [[
	highlight Normal guibg=none
	highlight NonText guibg=none
	highlight Normal ctermbg=none
	highlight NonText ctermbg=none
]]
end, {noremap=true})


-- vim.keymap.set("i", "<CR>", expandBracket())

function expandBracket()
end
