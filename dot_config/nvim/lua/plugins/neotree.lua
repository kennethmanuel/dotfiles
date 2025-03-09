return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        source_selector = {
            winbar = true,
            statusline = true,
        },
        filesystem = {
            filtered_items = {
                visible = true,
            },
        },
        sources = { "filesystem", "buffers", "git_status", "document_symbols" },
    },
    keys = {
        { "<leader>we", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
        { "<leader>e", false },
        { "<leader>E", false },
        { "<leader>ws", "<cmd>Neotree document_symbols<cr>" },
    },
}
