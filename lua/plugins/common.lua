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
          vim.fn.jobstart("neovide .")
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
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    keys = {
      {
        "<leader>h",
        function()
          require("toggleterm").toggle()
        end,
        desc = "open terminal at bottom",
      },
      {
        "<leader>n",
        function()
          require("toggleterm").toggle(nil, nil, nil, "tab")
        end,
      },
    },
  },
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = true,

    defaul_commands = true,
    defaul_mapping = true,
    list_opener = "copen",
    hightlights = {
      incoming = "DiffAdd",
      current = "DiffText",
    },
  },
  {
    "sindrets/diffview.nvim",
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    keys = {
      {
        "<leader>bo",
        "<cmd>BufferLineCloseOthers<cr>",
        desc = "close other buffer",
      },
    },
    config = function()
      vim.opt.termguicolors = true
      require("bufferline").setup({
        options = {
          diagnostics = "nvim_lsp",
          show_buffer_close_icons = false,
          sort_by = "tabs",
        },
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
