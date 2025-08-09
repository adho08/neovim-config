local os_name = vim.loop.os_uname().sysname

if IN_WINDOWS then -- is in windows
	vim.cmd.colorscheme('cyberdream')
elseif IN_WSL then
	vim.cmd.colorscheme('falcon')
elseif IN_LINUX then
	vim.cmd.colorscheme('vague')
else
	print("No colorscheme chosen")
end

local function enable_transparent_background()
	vim.cmd [[
	hi Normal guibg=NONE ctermbg=NONE
	hi NormalNC guibg=NONE ctermbg=NONE
	hi NvimTreeNormal guibg=NONE ctermbg=NONE
	hi EndOfBuffer guibg=NONE ctermbg=NONE
	hi LineNr guibg=NONE ctermbg=NONE
	hi SignColumn guibg=NONE ctermbg=NONE
	]]
end

-- local function enable_transparent_background()
-- 	vim.cmd [[
-- 	highlight Normal guibg=none
-- 	highlight NonText guibg=none
-- 	highlight Normal ctermbg=none
-- 	highlight NonText ctermbg=none
-- 	]]
-- end

vim.keymap.set("n", "<leader>tb", enable_transparent_background, {noremap=true})
enable_transparent_background()
