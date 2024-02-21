return {
    "williamboman/mason-lspconfig.nvim",
    priority = 95,
    dependencies = {
        "lopi-py/luau-lsp.nvim"
    },
    opts = {
        ensure_installed = { "lua_ls", "luau_lsp", "tsserver", "rust_analyzer" },
        automatic_installation = true,

        handlers = {
            function(server_name)
                require("lspconfig")[server_name].setup({})
            end,

            luau_lsp = function()
                require("luau-lsp").setup({
                    fflags = {
                        enable_by_default = true
                    },
                    server = {
                        settings = {
                            ["luau-lsp"] = {
                                completion = {
                                    imports = {
                                        enabled = true,
                                        separateGroupsWithLine = true,
                                    }
                                },
                                diagnostics = {
                                    strictDatamodelTypes  = true,
                                },
                            }
                        }
                    }
                })
            end,
        }
    }
}
