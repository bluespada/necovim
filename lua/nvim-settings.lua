local opt = vim.opt
-- undofiles
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
-- opt.foldmethod='syntax'
vim.cmd([[
autocmd!
filetype on
filetype indent on
filetype plugin on
syntax on
set nowrap
colorscheme justblack
]])
-- hi NonText guifg=bg

-- code folding
--[[vim.cmd([[]]
--[[augroup Autoview]]
--[[autocmd!]]
--[[autocmd BufWritePre,BufWinLeave ?* silent! mkview]]
--[[autocmd BufWinEnter ?* silent! laodview]]
--[[augroup END]]
--[[<])]]

-- auto makedir if save file not founds
vim.cmd([[
function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END
]])
