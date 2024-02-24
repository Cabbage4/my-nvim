-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

-- map({ "n", "x", "i", "v" }, "<S-LeftMouse>", "gd", { desc = "go into" })
map({ "n", "x", "i", "v" }, "<X1Mouse>", "<C-O>", { desc = "go back" })
map({ "n", "x", "i", "v" }, "<X2Mouse>", "<C-I>", { desc = "go forward" })
