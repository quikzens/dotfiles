vim.g.mapleader = ","

local keymap = vim.keymap

keymap.set("n", "<leader>w", ":w<cr>") -- save single buffer
keymap.set("n", "<leader>q", ":q<cr>") -- quit
keymap.set("n", "<leader>sq", ":wqall<cr>") -- save (one or multiple buffer) and quit
keymap.set("n", "<leader>e", ":Neotree toggle<cr>") -- quickly open the neo tree directory browser
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

keymap.set("v", "y", 'my"+y`y')

keymap.set("n", "x", '"_x') -- prevent 'x' character to a register
keymap.set("n", "'", ",") -- because ',' being used as leader key

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- plugin keymaps

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tag
keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>") -- list diagnotics in current working directory
keymap.set("n", "<leader>fo", "<cmd>Telescope lsp_document_symbols<cr>")
