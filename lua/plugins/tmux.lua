return {
	"christoomey/vim-tmux-navigator",
	vim.keymap.set('n', "C-h", ":TmuxNavigateLeft<CR>"),
	vim.keymap.set('n', "C-j", ":TmuxNavigateLeft<CR>"),
	vim.keymap.set('n', "C-k", ":TmuxNavigateLeft<CR>"),
	vim.keymap.set('n', "C-l", ":TmuxNavigateLeft<CR>"),
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
		"TmuxNavigatorProcessList",
	},
	keys = {
		{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
		{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
		{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
		{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
		{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
	}
}
