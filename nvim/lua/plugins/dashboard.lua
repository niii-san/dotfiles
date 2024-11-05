return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        require("dashboard").setup({
            -- config
        })

        require("dashboard-config")
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
