-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = LazyVim.safe_keymap_set

vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("n", "<leader>tb", "<Esc>", { noremap = false })

map("n", "<leader>tb", "<cmd>TagbarToggle<cr>", { desc = "Lazy" })
