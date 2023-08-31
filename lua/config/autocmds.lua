-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
--
if vim.g.neovide then
  vim.g.neovide_scale_factor = 1.2
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_refresh_rate = 120
end

vim.api.nvim_exec("set fdm=indent", true)
