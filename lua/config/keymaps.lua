-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = LazyVim.safe_keymap_set

vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("v", "kj", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("n", "<leader>tb", "<Esc>", { noremap = false })

map("n", "<leader>tb", "<cmd>TagbarToggle<cr>", { desc = "Lazy" })

-- Move Lines
map("v", "<S-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<S-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

map("n", "<c-e>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })

map("t", "<C-e>", "<cmd>close<cr>", { desc = "Hide Terminal" })
