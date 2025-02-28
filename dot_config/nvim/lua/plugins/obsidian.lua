return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    event = {
        "BufReadPre " .. vim.fn.expand("~") .. "/Vaults/*.md",
        "BufNewFile " .. vim.fn.expand("~") .. "/Vaults/*.md",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
        "nvim-telescope/telescope.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "personal",
                path = "~/Vaults/notes",
            },
            {
                name = "work",
                path = "~/Vaults/sp-notes",
            },
        },

        completion = {
            nvim_cmp = true,
            min_chars = 2,
        },

        note_id_func = function(title)
            local suffix = ""
            if title ~= nil then
                suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            else
                for _ = 1, 4 do
                    suffix = suffix .. string.char(math.random(65, 90))
                end
            end
            return tostring(os.time()) .. "-" .. suffix
        end,

        daily_notes = {
            folder = "dailies",
            date_format = "%Y-%m-%d",
            alias_format = "%B %-d, %Y",
            default_tags = { "daily-notes" },
            template = "daily-note-template.md",
        },

        templates = {
            folder = "templates",
            date_format = "%Y-%m-%d",
            time_format = "%H:%M",
            substitutions = {},
        },
    },

    keys = {
        { "<leader>ndt", "<cmd>ObsidianToday<cr>", desc = "Open today's Daily Note" },
        { "<leader>ndp", "<cmd>ObsidianYesterday<cr>", desc = "Open yesterday's Daily Note" },
        { "<leader>nn", "<cmd>ObsidianNew<cr>", desc = "Create new note" },
        { "<leader>nt", "<cmd>ObsidianNewFromTemplate<cr>", desc = "Create new note (choose from template)" },
        { "<leader>ns", "<cmd>ObsidianSearch<cr>", desc = "Search note" },
        { "<leader>nr", "<cmd>ObsidianRename<cr>", desc = "Rename note" },
    },

    new_notes_location = "notes_subdir",
}
