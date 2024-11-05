return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = false,
        styles = {
            sidebars = "dark",
            floats = "dark",
        },
    },
    config = function()
        require("tokyonight").load()
        -- Override Neo-tree popup colors for better visibility
        vim.cmd([[
      hi NeoTreePopupBorder guifg=#7aa2f7 guibg=NONE
      hi NeoTreePopupTitle guifg=#c0caf5 guibg=NONE
      hi NeoTreePopupNormal guifg=#c0caf5 guibg=NONE
    ]])
    end,
}
