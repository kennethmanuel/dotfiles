return {
  "ThePrimeagen/harpoon",
  keys = {
    { "<leader>H", false },
    {
      "<leader>`",
      function()
        require("harpoon"):list():add()
      end,
      desc = "Harpoon File",
    },
    {
      "<leader>h",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Harpoon Quick Menu",
    },
  }
}
