-- vim.opt.runtimepath:append("$HOME/go/src/cmd.nvim")
-- require("cmd").setup()

local Util = require("lazyvim.util")

return {
  {
    "Cabbage4/cmd.nvim",
    keys = {
      {
        "<leader>coo",
        function()
          require("cmd").win()
        end,
        desc = "open tabs",
      },
      {
        "<leader>coj",
        function()
          require("cmd").jump()
        end,
        desc = "jump to tab",
      },
      {
        "<D-n>",
        function()
          vim.fn.jobstart("open -n '/Applications/neovide.app/' --args .")
        end,
        desc = "new instance",
      },
      {
        "<leader>com",
        function()
          vim.api.nvim_exec("set fdm=marker", true)
        end,
        desc = "set index=marker",
      },
      {
        "<leader>coi",
        function()
          vim.api.nvim_exec("set fdm=indent", true)
        end,
        desc = "set fdm=indent",
      },
      {
        "<leader>R",
        function()
          vim.api.nvim_exec("LspRestart", true)
        end,
        desc = "lsp restart",
      },
      {
        "<c-/>",
        function()
          Util.float_term(nil, { cwd = Util.get_root(), border = "single" })
        end,
        desc = "Terminal (root dir)",
      },
      {
        "<leader>ft",
        function()
          Util.float_term(nil, { cwd = Util.get_root(), border = "single" })
        end,
        desc = "Terminal (root dir)",
      },
      {
        "<leader>fT",
        function()
          Util.float_term()
        end,
        desc = "Terminal (cwd)",
      },
    },
    config = function()
      require("cmd").setup()
    end,
  },
}
