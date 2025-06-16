return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    scope = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    terminal = {
      enabled = true,
      shell = "cmd",
    },
  },
  keys = {
    {
      "",
      function()
        require("snacks").terminal()
      end,
      desc = "Toggle Terminal",
    },
  },
}
