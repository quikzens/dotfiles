require("toggleterm").setup({
	open_mapping = [[<leader>t]],
	insert_mappings = false,
	direction = "float",
	float_opts = {
		border = "curved",
		width = 300,
		height = 80,
	},
})

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", direction = "float", hidden = true })

function _G._lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>gg", "<cmd>lua _lazygit_toggle()<cr>", { noremap = true, silent = true })
