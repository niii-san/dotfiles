return {
    "ray-x/lsp_signature.nvim",
    config = function()
        local lsp_signature = require("lsp_signature")

        lsp_signature.setup({
            bind = true, -- This is mandatory, otherwise border config won't get registered
            doc_lines = 10, -- Show two lines of comments/doc (truncated if more)
            floating_window = true, -- Use floating window for signatures
            floating_window_above_cur_line = true, -- Prefer floating above current line
            hint_enable = true, -- Enable virtual hint
            hint_prefix = "🐼 ", -- Emoji as hint prefix
            max_height = 12, -- Max height of the floating window
            max_width = 80, -- Max width of the floating window
            handler_opts = {
                border = "rounded", -- Rounded border for floating window
            },
            toggle_key = '<C-k>', -- Keybinding to toggle signature
        })
    end,
}

