vim.api.nvim_create_autocmd("FileType", {
		pattern = {  "latex", "tex", "markdown", "text" },
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "en_gb"
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "csv" },
	callback = function()
		vim.cmd(":CsvViewToggle")
	end,
})

