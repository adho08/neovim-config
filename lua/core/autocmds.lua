vim.api.nvim_create_autocmd("FileType", {
  pattern = "csv",
  callback = function()
    -- Replace with the command you want
    vim.cmd(":CsvViewToggle")
  end,
})
