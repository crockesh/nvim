return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>a", "<cmd>lua require(\"harpoon\"):list():append()<cr>" },
        { "<C-e>", "<cmd>lua require(\"harpoon\").ui:toggle_quick_menu(require(\"harpoon\"):list())<cr>" },
        { "<C-h>", "<cmd>lua require(\"harpoon\"):list():select(1)<cr>" },
        { "<C-t>", "<cmd>lua require(\"harpoon\"):list():select(2)<cr>" },
        { "<C-n>", "<cmd>lua require(\"harpoon\"):list():select(3)<cr>" },
        { "<C-s>", "<cmd>lua require(\"harpoon\"):list():select(4)<cr>" },
        { "<C-S-P>", "<cmd>lua require(\"harpoon\"):list():prev()<cr>" },
        { "<C-S-N>", "<cmd>lua require(\"harpoon\"):list():next()<cr>" },
    },
    config = true,
    lazy = false,
}
