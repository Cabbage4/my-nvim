local Util = require("lazyvim.util")
return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({})
    end,
    keys = {
      {
        "<leader>cot",
        "<cmd>ToggleTerm dir=" .. Util.root.get() .. "<cr>",
        desc = "open terminal",
      },
    },
  },
}
