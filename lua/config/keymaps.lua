-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.neovide then
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

  vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })

  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.20)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.25)
  end)

  vim.keymap.set("n", "<CD-f>", function()
    vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
  end)
end

-- myself
vim.keymap.set({ "n", "x", "o" }, "<leader>cos", function()
  require("flash").jump()
end)

vim.keymap.set({ "n", "x", "o", "i" }, "<D-w>", function()
  require("mini.bufremove").delete(0, false)
end)

vim.keymap.set("n", "<D-LeftMouse>", function()
  require("telescope.builtin").lsp_definitions({ reuse_win = true })
end)

-- editor
vim.keymap.set("n", "<D-a>", "gg<S-v>G")
vim.keymap.set("i", "<D-a>", "<ESC>gg<S-v>G")
-- vim.keymap.set("n", "<leader>R", "<leader>e<leader>e")

-- terminal
-- vim.keymap.set("n", "<c-/>", "<cmd>ToggleTerm direction=float<cr>", { desc = "Terminal float" })
