local Util = require("lazyvim.util")
return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        shell = "tmux",
      })
    end,
    keys = {
      {
        "<D-j>",
        "<cmd>ToggleTerm dir=" .. Util.root.get() .. "<cr>",
        desc = "test function",
      },
    },
  },
}
