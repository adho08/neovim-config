return{
	"nvim-telescope/telescope.nvim", 
	tag = "0.1.8", 
	dependencies = {"nvim-lua/plenary.nvim"},
	config = function()
		local builtin = require('telescope.builtin')

		-- Use vim.api.nvim_set_keymap for a more direct approach
		vim.keymap.set('n', '<leader>ff',
		'<cmd>lua require("telescope.builtin").find_files()<CR>', {})

		vim.keymap.set('n', '<C-p>',
		'<cmd>lua require("telescope.builtin").git_files()<CR>', {})

		vim.keymap.set('n', '<leader>ps',
		'<cmd>lua require("telescope.builtin").grep_string({search = vim.fn.input("Grep > ")})<CR>', {})

		vim.keymap.set('n', '<leader>c', function()
			vim.cmd("Telescope colorscheme")
		end, {noremap = true, silent = true})

	end
}
