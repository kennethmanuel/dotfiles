return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "work",
        path = "~/Vaults/sp-notes",
      },
    },

    -- see below for full list of options 👇
    --  -- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
    completion = {
      -- Set to false to disable completion.
      nvim_cmp = true,
      -- Trigger completion at 2 chars.
      min_chars = 2,
    },

    -- -- Optional, customize how note IDs are generated given an optional title.
    -- ---@param title string|?
    -- ---@return string
    -- note_id_func = function(title)
    --   -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
    --   -- In this case a note with the title 'My new note' will be given an ID that looks
    --   -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
    --   local suffix = ""
    --   if title ~= nil then
    --     -- If title is given, transform it into valid file name.
    --     suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
    --   else
    --     -- If title is nil, just add 4 random uppercase letters to the suffix.
    --     for _ = 1, 4 do
    --       suffix = suffix .. string.char(math.random(65, 90))
    --     end
    --   end
    --   return suffix
    -- end,

    -- Optional, for templates (see below).
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "dailies",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%Y-%m-%d",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = "%B %-d, %Y",
      -- Optional, default tags to add to each new daily note created.
      default_tags = { "daily-notes" },
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = "daily-note-template.md",
    },

    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },
  },

  keys = {
    { "<leader>nt", "<cmd>ObsidianToday<cr>", desc = "Open today's Daily Note" },
    { "<leader>ny", "<cmd>ObsidianYesterday<cr>", desc = "Open yesterday's Daily Note" },
    { "<leader>nn", "<cmd>ObsidianNewFromTemplate<cr>", desc = "Create new note (choose from template)" },
    { "<leader>ns", "<cmd>ObsidianSearch<cr>", desc = "Search note or create" },
    { "<leader>nr", "<cmd>ObsidianRename<cr>", desc = "Rename note" },
    -- { "<leader>ns", "<cmd>ObsidianTags<cr>", desc = "Search note by tag" },
  },
}
