return {
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} }
        }
    },
    {
        "lopi-py/luau-lsp.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },
}
