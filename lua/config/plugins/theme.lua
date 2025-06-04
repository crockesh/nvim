return {
    "folke/tokyonight.nvim",
    priority = 1000,
    init = function()
        vim.cmd.colorscheme("tokyonight")
    end,
    opts = {
        style = "night",
        dim_inactive = true,
        transparent = true,
    },
}
