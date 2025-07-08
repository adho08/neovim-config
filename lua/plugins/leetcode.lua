return {
	"kawre/leetcode.nvim",
	build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
	dependencies = {
		"nvim-telescope/telescope.nvim",
		-- "ibhagwan/fzf-lua",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		-- configuration goes here
		vim.keymap.set('n', "<leader>lt", ":Leet test<CR>"),
		vim.keymap.set('n', "<leader>lr", ":Leet run<CR>"),
		vim.keymap.set('n', "<leader>ls", ":Leet submit<CR>"),
	},
}
