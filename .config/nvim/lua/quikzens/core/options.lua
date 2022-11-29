vim.opt.compatible = false
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.termguicolors = true
vim.opt.encoding = "utf-8"
vim.opt.swapfile = false
vim.opt.splitright = true
vim.opt.updatetime = 100
vim.opt.timeoutlen = 500
vim.opt.wrap = false
vim.opt.breakindent = true
vim.opt.relativenumber = true
vim.opt.showmode = false -- default mode information is unnecessary because we have lualine plugin
vim.opt["guicursor"] = "i:block"

-- netrw
vim.g.netrw_banner = 0
vim.g.netrw_bufsettings = 'noma nomod nu nobl nowrap ro'