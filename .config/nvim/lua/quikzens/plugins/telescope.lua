local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

-- configure telescope
telescope.setup({
	-- configure custom mappings
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous, -- move to prev result
				["<C-j>"] = actions.move_selection_next, -- move to next result
				["<C-f>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
				["<leader>d"] = actions.delete_buffer,
				["<leader>q"] = actions.close,
			},
		},
		layout_strategy = "horizontal",
		layout_config = {
			horizontal = {
				prompt_position = "top",
			},
		},
		sorting_strategy = "ascending",
	},
})

telescope.load_extension("fzf")

-- functions
local showSymbolFinder = function()
	local opts = {
		symbols = {
			"interface",
			"class",
			"constructor",
			"method",
			"function",
			"struct",
		},
	}
	if vim.bo.filetype == "vim" then
		opts.symbols = { "function" }
	end
	require("telescope.builtin").lsp_document_symbols(opts)
end
vim.api.nvim_create_user_command("ShowSymbolFinder", showSymbolFinder, {})

-- keymaps
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_status<cr>")
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tag
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>") -- list diagnotics in current working directory
vim.keymap.set("n", "<leader>fo", "<cmd>ShowSymbolFinder<cr>") -- list document symbols in current buffer
