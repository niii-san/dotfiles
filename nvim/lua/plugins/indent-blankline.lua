return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("ibl").setup({
            enabled = true,
            exclude = { -- Exclude file types
                filetypes = { "help", "dashboard", "packer" },
            },
            scope = {
                enabled = false,
            },
        })
    end,
}
