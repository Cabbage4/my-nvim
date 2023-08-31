-- vim.opt.runtimepath:append("$HOME/go/src/cmd.nvim")
-- require("cmd").setup()

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
    },
    config = function()
      require("cmd").setup()
    end,
  },
}
