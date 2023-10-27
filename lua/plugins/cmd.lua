-- vim.opt.runtimepath:append("$HOME/go/src/cmd.nvim")
-- require("cmd").setup()

local Util = require("lazyvim.util")

return {
  {
    "Cabbage4/cmd.nvim",
    keys = {
      {
        "<D-t>",
        function()
          vim.notify("test start")
          vim.notify("test end")
        end,
        desc = "test function",
      },
      {
        "<D-n>",
        function()
          local dir = require("telescope.utils").buffer_dir()
          vim.fn.jobstart("open -n '/Applications/neovide.app/' --args " .. dir)
        end,
        desc = "new instance",
      },
      {
        "<leader>cof",
        function()
          require("cmd").format()
        end,
        desc = "format by myself",
      },
      {
        "<leader>coz",
        function()
          require("cmd").fold()
        end,
        desc = "fold by myself",
      },
      {
        "<D-f>",
        function()
          -- require("telescope.builtin").grep_string({ cwd = Util.root.get() })
          require("telescope.builtin").live_grep({ cwd = Util.root.get() })
        end,
        desc = "grep in current cwd",
      },
      {
        "<D-r>",
        function()
          vim.api.nvim_exec("LspRestart", true)
        end,
        desc = "lsp restart",
      },
      {
        "<c-/>",
        function()
          Util.terminal.open(nil, {
            cwd = Util.root.get(),
            border = "single",
            size = { width = 0.95, height = 0.9 },
            title = "terminal",
            title_pos = "center",
          })
        end,
        desc = "Terminal (root dir)",
      },
    },
    config = function()
      require("cmd").setup()
    end,
  },
}
