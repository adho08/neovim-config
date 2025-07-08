return {
	"L3MON4D3/LuaSnip",
	config = function()

		local ls = require("luasnip")

		-- expand or jump in insert mode
		vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})

		-- Jump forward/backward through tabstops in visual mode
		vim.keymap.set({"i", "s"}, "<C-k", function() ls.jump( 1) end, {silent = true})
		vim.keymap.set({"i", "s"}, "<C-j>", function() ls.jump(-1) end, {silent = true})

		vim.keymap.set({"i", "s"}, "<C-e>", function()
			if ls.choice_active() then
				ls.change_choice(1)
			end
		end, {silent = true})

		ls.config.set_config({
			-- Enable autotriggered snippets
			enable_autosnippets = true,

			-- Use Tab (or some other key if you prefer) to trigger visual selection
			store_selection_keys = "<Tab>",
		})

		-- Lazy-load snippets, i.e. only load when required, e.g. for a given filetype
		require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/lua/snippets"})
	end
}
