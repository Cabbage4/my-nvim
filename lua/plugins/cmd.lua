-- vim.opt.runtimepath:append("$HOME/go/src/cmd.nvim")
-- require("cmd").setup()

local Util = require("lazyvim.util")

return {
  {
    "Cabbage4/cmd.nvim",
    keys = {
      {
        "<c-t>",
        function()
          vim.notify("test start")
          vim.notify("test end")
        end,
        desc = "test function",
      },
      {
        "<leader>cor",
        function()
          local root = Util.root.get()
          vim.fn.system('tmux rename-window "$(basename ' .. root .. ')"')
        end,
        desc = "tmux rename",
      },
      {
        "<leader>cof",
        function()
          require("cmd").format()
        end,
        desc = "format",
      },
      {
        "<leader>cos",
        function()
          require("flash").jump()
        end,
        desc = "skip",
      },
      {
        "<leader>coz",
        function()
          require("cmd").fold()
        end,
        desc = "fold",
      },
    },
    config = function()
      require("cmd").setup()
    end,
  },
}
