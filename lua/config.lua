local opt = vim.opt

-- undofiles
opt.fsync = true
opt.undofile = true
opt.completeopt = 'menuone,noinsert,noselect'
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
opt.relativenumber = true
opt.autoindent = true
opt.background = 'dark'
opt.shell = 'fish'
opt.title = false
opt.encoding = 'utf-8'
opt.cursorline = true
opt.list = true
opt.ignorecase = true
opt.colorcolumn = '80'
opt.splitbelow = true
opt.splitright = true
opt.scrolloff = 3
opt.numberwidth = 4
-- opt.foldmethod = 'syntax'
vim.cmd([[
autocmd!
filetype on
filetype indent on
filetype plugin on
syntax on
set nowrap
set t_Co=256
set t_ut=
hi default link UfoFoldedEllipsis Comment
colorscheme seoul256
]])
