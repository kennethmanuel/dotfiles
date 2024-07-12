return {
  "vimwiki/vimwiki",
  keys = {
    { "<leader>ww", "<cmd>VimwikiIndex<cr>",      desc = "Open VimWiki Index" },
    { "<CR>",       "<cmd>VimwikiFollowLink<cr>", desc = "Follow / create VimWiki Link" },
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
  end
}
