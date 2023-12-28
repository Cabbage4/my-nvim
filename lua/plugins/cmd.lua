-- vim.opt.runtimepath:append("$HOME/go/src/cmd.nvim")
-- require("cmd").setup()

local Util = require("lazyvim.util")

local Input = require("nui.input")
local input = Input({
  position = "50%",
  size = {
    width = 50,
  },
  border = {
    style = "single",
    text = {
      top = "grep in folder",
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
    local path = Util.root.get() .. "/" .. value
    require("telescope.builtin").live_grep({ cwd = path })
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    if require("lazyvim.util").format.enabled() == false then
      return
    end

    require("cmd").format()

    local file_path = vim.fn.expand("%:p")
    local file_path_split = vim.split(file_path, "/")
    local file_name = file_path_split[#file_path_split]
    local file_type = require("telescope.utils").file_extension(file_name)

    if file_type == "go" then
      vim.fn.jobstart("importgroup -f " .. file_path, {
        on_exit = function()
          vim.cmd("e")
        end,
      })
    end
  end,
})

return {
  {
    "Cabbage4/cmd.nvim",
    keys = {
      {
        "<c-t",
        function()
          vim.notify("test start")
          vim.notify("test end")
        end,
        desc = "test function",
      },
      {
        "<leader>cog",
        function()
          input:mount()
        end,
        desc = "find in folder",
      },
      {
        "<leader>cof",
        "<cmd>Neotree reveal<cr>",
        desc = "focus on current file at tree",
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
