return {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup()
        end,
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            --Bash
            lspconfig.bashls.setup({
                capabilities = capabilities,
            })

            --JavaSkript / TS
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            })

            --JSON
            lspconfig.jsonls.setup({
                capabilities = capabilities,
            })

            --python
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })

            --lua
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            })

            --css
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })

            --tailwind
            lspconfig.tailwindcss.setup({
                capabilities = capabilities,
            })

            --html
            lspconfig.html.setup({
                capabilities = capabilities,
            })

            --Java
            lspconfig.jdtls.setup({
                capabilities = capabilities,
            })

            --C language
            lspconfig.clangd.setup({
                capabilities = capabilities,
            })
        end,
    },
}
