local uname = vim.loop.os_uname()

-- global variables for config directory
IS_WSL = uname.release:lower():find("microsoft") ~= nil
IS_WINDOWS = vim.fn.has("win32") == 1
