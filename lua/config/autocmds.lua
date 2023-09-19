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

vim.api.nvim_exec("set fdm=manual", true)
vim.api.nvim_exec("set norelativenumber", true)
require("mason-lspconfig").setup({
  automatic_installation = false,
})

require("telescope").setup({
  defaults = {
    layout_strategy = "vertical",
    layout_config = { height = 0.95, width = 0.95 },
  },
})

-- if there was a linting error on the current cursor
-- position open a popup, otherwise show the lsp hover
-- documentation
function Hover()
  if not require("prosesitter").popup() then
    vim.lsp.buf.hover()
  end
end

local cmd = ":lua Hover()<CR>"
local opt = { noremap = true, silent = true, nowait = true }
vim.api.nvim_set_keymap("n", ",", cmd, opt)
