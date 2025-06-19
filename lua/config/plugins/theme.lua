return {
    "landerson02/ghostty-theme-sync.nvim",
    dependencies = {
        { "xiyaowong/transparent.nvim", build = ":TransparentEnable" },
    },
    opts = {
        extra_groups = {
            "NormalFloat",
            "NvimTreeNormal",
        },
    },
}
