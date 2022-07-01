local C = {}
local packer = require 'utils.packer'
local map = vim.api.nvim_set_keymap
local wmap = require 'which-key'.register
function C.init(N, c)
    if not packer.bootstrap then
        if c.colorscheme then
            N.cmd('colorscheme ' .. c.colorscheme)
        end
        if c.nowrap then
            N.cmd('set nowrap')
        end
        c.keybind(map, wmap)
        if c.wiki.path and c.wiki.extension then
            vim.g.vimwiki_list = { {
                path = c.wiki.path,
                ext = c.wiki.extension
            } }
        end
    end
    N.opt.termguicolors = c.termguicolors
    N.opt.fsync = c.fsync
    N.opt.undofile = true
    N.opt.completeopt = 'menuone,noinsert,noselect'
    N.opt.tabstop = 4
    N.opt.softtabstop = 0
    N.opt.expandtab = true
    N.opt.shiftwidth = 4
    N.opt.ai = true
    N.opt.si = true
    N.opt.mouse = 'a'
    N.opt.showcmd = true
    N.opt.number = true
    N.opt.relativenumber = true
    N.opt.autoindent = true
    N.opt.background = 'dark'
    N.opt.shell = c.shell
    N.opt.title = false
    N.opt.encoding = 'utf-8'
    N.opt.cursorline = true
    N.opt.list = true
    N.opt.ignorecase = true
    N.opt.colorcolumn = '80'
    N.opt.splitbelow = true
    N.opt.splitright = true
    N.opt.scrolloff = 3
    N.opt.numberwidth = 4
end

return C
