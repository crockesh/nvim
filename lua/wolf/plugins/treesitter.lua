return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "luau", "vim", "vimdoc", "query" },
            sync_installed = false,
            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
            },

            indent = {
                enable = true,
            },
        })
    end
}
