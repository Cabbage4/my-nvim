local Input = require("nui.input")
local input = Input({
  position = "50%",
  size = {
    width = 20,
  },
  border = {
    style = "single",
    text = {
      top = "suffix",
      top_align = "center",
    },
  },
  win_options = {
    winhighlight = "Normal:Normal,FloatBorder:Normal",
  },
}, {
  prompt = "> ",
  default_value = "",
  on_close = function() end,
  on_submit = function(value)
    if value == "" then
      return
    end

    vim.api.nvim_exec("w /tmp/tmp" .. value, true)
  end,
})

return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    keys = {
      {
        "<leader>bo",
        "<cmd>BufferLineCloseOthers<cr>",
        desc = "Close other buffer",
      },
      {
        "<leader>bn",
        "<cmd>enew<cr>",
        desc = "New buffer",
      },
      {
        "<c-p>",
        function()
          input:mount()
        end,
        desc = "save file with suffix",
      },
    },
  },
}
