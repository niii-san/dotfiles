vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right toggle<CR>")
vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>")

--format
vim.keymap.set('n', '<leader>ft', function()
    -- Trim trailing whitespace
    vim.cmd([[%s/\s\+$//e]])
    -- Format using Prettier (through LSP or none-ls)
    vim.lsp.buf.format({ async = false })
end, { noremap = true, silent = true })

vim.keymap.set("n", "<m-tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<m-w>", ":BufferLinePickClose<CR>")
