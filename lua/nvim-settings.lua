local opt = vim.opt
-- undofiles
opt.undofile = true
opt.completeopt='menuone,noinsert,noselect'
-- configuration tab
opt.tabstop = 4
opt.softtabstop = 0
opt.expandtab = true
opt.shiftwidth = 4 
opt.ai = true
opt.si = true

-- general configurations
opt.mouse = 'a'
opt.showcmd = true
opt.termguicolors = true
opt.number = true
opt.autoindent = true
opt.background = 'dark'
opt.shell='zsh'
opt.title = false
opt.encoding = 'utf-8'
opt.cursorline = true

vim.cmd([[
autocmd!
filetype on
filetype indent on
filetype plugin on
syntax on
set nowrap
colorscheme ayu
hi NonText guifg=bg
]])

