vim.g.mapleader = ","

local keymap = vim.keymap

keymap.set("n", "<leader>w", ":w<cr>") -- save single buffer
keymap.set("n", "<leader>q", ":q<cr>") -- quit
keymap.set("n", "<leader>aw", ":wa<cr>") -- save all buffers
keymap.set("n", "<leader>aq", ":qa<cr>") -- quit all windows
keymap.set("n", "<leader>e", ":Neotree toggle<cr>") -- toggle file explorer
keymap.set("i", "jk", "<ESC>") -- easier to get out from 'insert' mode

-- automatically yank/copy text to clipboard
keymap.set("v", "y", '"+y')
keymap.set("n", "y", '"+y')

-- automatically cut text to clipboard
keymap.set("v", "d", '"+d')
keymap.set("n", "d", '"+d')

-- automatically paste text from clipboard
keymap.set("v", "p", '"+p')
keymap.set("n", "p", '"+p')

keymap.set("v", "y", 'my"+y`y') -- prevent cursor position changed when yanking selected lines

keymap.set("n", "x", '"_x') -- prevent 'x' character goes to a register
keymap.set("n", "'", ",") -- because ',' being used as leader key

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
