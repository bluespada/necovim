vim.keymap.set('i', '<C-g>', function()
    return vim.fn['codeium#Accept']()
end, { expr = true })

-- create code to do join 2 numbers
