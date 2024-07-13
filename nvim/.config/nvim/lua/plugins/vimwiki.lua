return {
  "vimwiki/vimwiki",
  lazy = false,
  keys = {
    { "<leader>ww", "<Plug>VimwikiIndex", desc = "Open VimWiki Index" },
    { "<CR>", "<Plug>VimwikiFollowLink", mode = { "n" }, desc = "Follow / create VimWiki Link" },
    { "<CR>", "<Plug>VimwikiNormalizeLinkVisual", mode = { "v" } },
    { "<leader>wr", "<Plug>VimwikiRenameFile", mode = { "n" } },
  },
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/vimwiki/",
        syntax = "markdown",
        ext = "md",
      },
    }
    vim.g.vimwiki_key_mappings = { all_maps = 0 }
  end,
}
