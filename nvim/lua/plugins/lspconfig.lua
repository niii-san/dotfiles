return {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup({
                opts = {
                    ensure_installed = { "tsserver", "pyright", "css-lsp", "clangd", "prettier" },
                },
            })
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

            --for emmets
            lspconfig.emmet_language_server.setup({
                filetypes = {
                    "css",
                    "eruby",
                    "html",
                    "javascript",
                    "javascriptreact",
                    "less",
                    "sass",
                    "scss",
                    "pug",
                    "typescript",
                    "typescriptreact",
                },
                -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
                -- **Note:** only the options listed in the table are supported.
                init_options = {
                    ---@type table<string, string>
                    includeLanguages = {},
                    --- @type string[]
                    excludeLanguages = {},
                    --- @type string[]
                    extensionsPath = {},
                    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
                    preferences = {},
                    --- @type boolean Defaults to `true`
                    showAbbreviationSuggestions = true,
                    --- @type "always" | "never" Defaults to `"always"`
                    showExpandedAbbreviation = "always",
                    --- @type boolean Defaults to `false`
                    showSuggestionsAsSnippets = false,
                    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
                    syntaxProfiles = {},
                    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
                    variables = {},
                },
            })
        end,
    },
}
