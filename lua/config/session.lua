local dir = vim.fn.getcwd()
local async = require'plenary.async'
local notify = require'notify'.async
local map = vim.api.nvim_set_keymap
local session = require'sessions'
local plugin_title = "Session"
local notifyopts = {
    title = plugin_title,
    stages = 'slide',
    timeout = 3000,
}

function SaveSession()
    async.run(function()
        session.save(dir.."/.necovim/session")
        -- notify
        notify("Session saved at "..dir..'/.vim/session.','info',notifyopts)
    end)
end

function LoadSession()
    async.run(function()
        print(vim.fn.filereadable(dir.."/.necovim/session"))
        if vim.fn.filereadable(dir.."/.necovim/session") == 0 then
            notify("Session not found.",'error',notifyopts)
        else
            session.load(dir..'/.necovim/session')
            notify("Session loaded.",'info',notifyopts)
        end
    end)
end

-- save sessions
map('n','<C-s><C-s>',':lua SaveSession()<CR>',{ silent = true, noremap = true })

-- load session
map('n','<C-s><C-l>',':lua LoadSession()<CR>',{ silent = true, noremap = true })
