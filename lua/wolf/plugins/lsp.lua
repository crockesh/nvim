return {
    "williamboman/mason-lspconfig.nvim",
    priority = 95,
    dependencies = {
        "lopi-py/luau-lsp.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },
    opts = {
        ensure_installed = { "lua_ls", "luau_lsp", "rust_analyzer" },
        automatic_installation = true,

        handlers = {
            function(server_name)
                require("lspconfig")[server_name].setup({
                    capabilities = require("cmp_nvim_lsp").default_capabilities(),
                })
            end,

            lua_ls = function()
                require("lspconfig").lua_ls.setup({
                    capabilities = require("cmp_nvim_lsp").default_capabilities(),
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" }
                            }
                        }
                    }
                })
            end,
            luau_lsp = function()
                require("luau-lsp").setup({
                    capabilities = require("cmp_nvim_lsp").default_capabilities(),
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
                                    strictDatamodelTypes = true,
                                },
                            }
                        }
                    }
                })
            end,
        }
    }
}
