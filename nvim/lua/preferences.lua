
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.smartindent = true

vim.opt.cursorline = true

-- to enable system clipboard access
vim.o.clipboard = "unnamedplus"


-- Set tab width to 4 spaces
vim.opt.tabstop = 4      -- Number of spaces tabs count for
vim.opt.shiftwidth = 4   -- Number of spaces to use for autoindent
vim.opt.expandtab = true -- Convert tabs to spaces

-- floating inline messages
vim.o.updatetime = 250  -- Set faster update time (default is too slow)
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})



