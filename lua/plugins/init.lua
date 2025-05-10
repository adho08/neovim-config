local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git", lazypath
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"nvim-telescope/telescope.nvim", 
		tag = "0.1.8", 
		dependencies = {"nvim-lua/plenary.nvim"}
	},
	{
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate"
	},
	"nvim-treesitter/playground",
	"theprimeagen/harpoon",
	"mbbill/undotree",
	"L3MON4D3/LuaSnip",

	-- AI
	"yetone/avante.nvim",
	{
		"Saghen/blink.cmp",
		"lervag/vimtex",
		lazy = false,     -- we don't want to lazy load VimTeX
	},

	-- colorschemes
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
	},
	"fenetikm/falcon",
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
	},
	{
		'olivercederborg/poimandres.nvim',
		lazy = false,
		priority = 1000,
	}
})

require("plugins.harpoon")
require("plugins.telescope")
require("plugins.undotree")
require("plugins.treesitter")
require("plugins.luasnip")
require("plugins.colorscheme")
require("plugins.vimtex")
require("plugins.avante")
