local os_name = vim.loop.os_uname().sysname

IN_WSL = false
IN_WINDOWS = false
IN_LINUX = false

if os_name == "Windows_NT" then
    if vim.fn.has("wsl") == 1 then
	IN_WSL = true
    else
	IN_WINDOWS = true
    end
elseif os_name == "Linux" then
    -- Extra check for WSL (Linux kernel + Microsoft environment)
    if string.find(vim.fn.system("uname -r"), "microsoft") then
	IN_WSL = true
    else
	IN_LINUX = true
    end
else
    print("Unknown OS: " .. os_name)
end
