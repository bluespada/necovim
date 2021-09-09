local opt = vim.opt
opt.undofile = true
opt.number = false
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 0
opt.expandtab = true
opt.shiftwidth = 4
opt.smarttab = true
opt.showcmd = true
opt.mouse = 'a'
opt.termguicolors = true
vim.o.completeopt = "menuone,noselect"

vim.cmd([[
syntax on
set nowrap
]])

