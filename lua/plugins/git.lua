return {
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
    config = function() end,
  },
}
