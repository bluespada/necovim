local ibl = require'ibl'

ibl.setup {
    exclude = {
        -- hide indent line on dashboard
        filetypes = { "dashboard" }
    }
}

vim.opt.list = true
--vim.opt.listchars:append("space:.")
vim.opt.listchars:append("eol:↴")
