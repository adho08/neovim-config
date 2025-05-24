return {
	"lervag/vimtex",
	lazy = false,     -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	config = function()
		-- Use a custom script for viewing PDFs
		vim.g.vimtex_view_method = 'general'
		vim.g.vimtex_view_general_viewer = '/home/adhos/.local/bin/openpdf.sh'
		vim.g.vimtex_quickfix_enabled = 0

		-- Make sure latexmk generates synctex data
		vim.g.vimtex_compiler_latexmk = {
			out_dir = 'build',
			callback = 1,
			continuous = 1,
			executable = 'latexmk',
			options = {
				'-pdf',
				'-verbose',
				'-file-line-error',
				'-synctex=1',
				'-interaction=nonstopmode',
			},
		}
	end
}

