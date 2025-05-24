return{
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			-- key mappings
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)  -- go to definition
			vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, opts) -- go to declaration
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)        -- hover info
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts) -- go to implementation
			vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts) -- rename symbol
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts) -- code actions
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)  -- find references
			vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts) -- previous diagnostic
			vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts) -- next diagnostic
			vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts) -- show diagnostics
		end
	},
	{
		"mason-org/mason.nvim",
		opts = {}
	},
	-- mason-lspconfig is buggy
	-- {
	-- 	"mason-org/mason-lspconfig.nvim",
	-- 	opts = {},
	-- 	dependencies = {
	-- 		{ "mason-org/mason.nvim", opts = {} },
	-- 		"neovim/nvim-lspconfig",
	-- 	},
	-- },
}
