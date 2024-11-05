return {
    "nvimtools/none-ls.nvim",
    optional = true,
    opts = function(_, opts)
        local nls = require("null-ls")

        -- Ensure Prettier is included as a formatting source
        opts.sources = opts.sources or {}
        table.insert(opts.sources, nls.builtins.formatting.prettier.with({
            filetypes = {
                "javascript", "typescript", "json", "jsx", "tsx",
                "css", "scss", "html", "markdown", "lua", "java", "c"
            },
            command = "prettier", -- Use the Prettier command installed by Mason
            extra_args = { "--tab-width", "4" },
        }))
    end,
}
