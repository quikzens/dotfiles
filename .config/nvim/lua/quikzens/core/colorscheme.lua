vim.g.ayucolor = "mirage" -- mirage, light, dark
pcall(vim.cmd, "colorscheme ayu")

vim.cmd([[
highlight EndOfBuffer guifg=bg
set fillchars+=vert:\│
hi vertsplit guifg=#353535 guibg=bg gui=NONE
]])
