-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})

-- Change the title of wezterm tab
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  callback = function(event)
    local title = "nvim"
    if event.file ~= "" then
      title = string.format("%s", vim.fs.basename(event.file))
    end

    vim.fn.system({ "wezterm", "cli", "set-tab-title", title })
  end,
})

-- Change the title when we leave
vim.api.nvim_create_autocmd({ "VimLeave" }, {
  callback = function()
    -- Setting title to empty string causes wezterm to revert to its
    -- default behavior of setting the tab title automatically
    vim.fn.system({ "wezterm", "cli", "set-tab-title", "" })
  end,
})
