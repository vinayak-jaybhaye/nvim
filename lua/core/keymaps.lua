vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", {desc = "Exit insert mode"})  -- exit insert mode
keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights"})  -- clear search highlights

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", {desc = "Increment number"})
keymap.set("n", "<leader>-", "<C-x>", {desc = "Decrement number"})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "Split window vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "Split window horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", {desc = "Equalize window sizes"})
keymap.set("n", "<leader>sx", ":close<CR>", {desc = "Close current window"})

-- tab management
keymap.set("n", "<leader>to", ":tabnew<CR>", {desc = "Open new tab"})
keymap.set("n", "<leader>tx", ":tabclose<CR>", {desc = "Close current tab"})
keymap.set("n", "<leader>tn", ":tabn<CR>", {desc = "Go to next tab"})
keymap.set("n", "<leader>tp", ":tabp<CR>", {desc = "Go to previous tab"})