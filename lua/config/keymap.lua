-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Exit terminal mode with escape
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Alias awkward movement keys
vim.keymap.set({ "n", "v" }, "K", "{", { desc = "Go to paragraph backward" })
vim.keymap.set({ "n", "v" }, "J", "}", { desc = "Go to paragraph forward" })
vim.keymap.set({ "n", "v" }, "H", "^", { desc = "Go to start of line" })
vim.keymap.set({ "n", "v" }, "L", "$", { desc = "Go to end of line" })

-- Easier movement in insert mode
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Up" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Down" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Right" })

-- Surrounding characters in visual mode
vim.keymap.set("v", "<leader>(", "c()<ESC>P", { desc = "Surround with ()" })
vim.keymap.set("v", "<leader>[", "c[]<ESC>P", { desc = "Surround with []" })
vim.keymap.set("v", "<leader>{", "c{}<ESC>P", { desc = "Surround with {}" })
vim.keymap.set("v", '<leader>"', 'c""<ESC>P', { desc = 'Surround with ""' })
vim.keymap.set("v", "<leader>'", "c''<ESC>P", { desc = "Surround with ''" })
vim.keymap.set("v", "<leader>`", "c``<ESC>P", { desc = "Surround with ``" })
vim.keymap.set("v", "<leader>«", "c«»<ESC>P", { desc = "Surround with «»" })
vim.keymap.set("v", "<leader>$", "c$$<ESC>P", { desc = "Surround with $$" })
