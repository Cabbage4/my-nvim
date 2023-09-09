-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
--
--

vim.opt.relativenumber = true

if vim.g.neovide then
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_refresh_rate = 120
end

vim.api.nvim_exec("set fdm=marker", true)
vim.api.nvim_exec("set norelativenumber", true)
require("mason-lspconfig").setup({
  automatic_installation = false,
})

require("telescope").setup({
  defaults = {
    layout_strategy = "vertical",
  },
})
