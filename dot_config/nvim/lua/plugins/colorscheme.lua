return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            transparent_background = true,
        },
    },
    { "rose-pine/neovim", name = "rose-pine", opts = {} },
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = { style = "night", transparent = true },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
}
