return {
    { "williamboman/mason.nvim", priority = 100, config = true },
    { "neovim/nvim-lspconfig", priority = 90 },
    { "lopi-py/luau-lsp.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
}
