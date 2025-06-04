return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>pf", "<cmd>lua require(\"telescope.builtin\").find_files()<cr>" },
        { "<C-p>", "<cmd>lua require(\"telescope.builtin\").git_files()<cr>" },
        { "<leader>pws", "<cmd>lua require(\"telescope.builtin\").grep_string({ search = vim.fn.expand(\"<cword>\") })<cr>" },
        { "<leader>pWs", "<cmd>lua require(\"telescope.builtin\").grep_string({ search = vim.fn.expand(\"<cWORD>\") })<cr>" },
        { "<leader>ps", "<cmd>lua require(\"telescope.builtin\").grep_string({ search = vim.fn.input(\"Grep > \") })<cr>" },
    }
}
