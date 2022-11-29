local status, lualine = pcall(require, "lualine")
if not status then
	return
end

lualine.setup({
	sections = {
		lualine_c = {
			{
				"filename",
				file_status = true,
				path = 1,
			},
		},
	},
})
