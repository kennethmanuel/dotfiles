return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        source_selector = {
            winbar = true,
            statusline = false,
        },
        filesystem = {
            filtered_items = {
                visible = true,
            },
        },
    },
    keys = {
        { "<leader>we", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
        { "<leader>e", false },
        { "<leader>E", false },
    },
}
