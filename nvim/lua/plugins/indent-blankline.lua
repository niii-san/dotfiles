return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("ibl").setup({
            enabled = true, -- Enable indent-blankline
            indent = {
                -- char = "▎",  -- Character used for indent guides
                -- highlight = "IblIndent",  -- Highlight group for the indentation guide
                --tab_char = "▸", -- Character used for tab indent guides
            },
            exclude = { -- Exclude file types
                filetypes = { "help", "dashboard", "packer" },
            },
            whitespace = {
                highlight = { "Whitespace", "NonText" },
            },
            scope = {
                enabled = false,
            },
        })
    end,
}
