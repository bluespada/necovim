local map = require 'which-key'

map.register({
    ["<space>"] = {
        d = {
            name = "Dashboard",
            d = { "<cmd>Dashboard<cr>", "Open Dashboard" },
            n = { "<cmd>enew<cr>", "New File" },
            w = { "<cmd>Telescope live_grep<cr>", "Find Words" },
            f = { "<cmd>Telescope find_files<cr>", "Find File" },
            c = { "<cmd>lua DashboardNvimConfig()<cr>", "Open Neovim Config" },
            l = { "<cdm>lua LoadSession()<cr>", "Load Session" },
        },
        -- buffers
        b = {
            name = "Buffers",
            d = { "<cmd>bd!<cr>", "Close Current buffers" },
            n = { "<cmd>bnext<cr>", "Next Buffers" },
            p = { "<cmd>bprevious<cr>", "Previous Buffers" },
            m = {
                name = "Move",
                n = { "<cmd>BufferLineMoveNext<cr>", "Move buffers to next" },
                p = { "<cmd>BufferLineMovePrev<cr>", "Move buffer to previus" }
            }

        },
        c = { "Calendar" },
        -- calendar
        ['ca'] = {
            name = "Calendar",
            l = { "<cmd>Calendar", "Open Calendar" }
        },
    },
    ['\\'] = {
        -- NerdCommenter
        ['c'] = "NerdCommenter",
        -- NerdTree
        n = {
            name = "Nerd Tree",
            t = {
                name = "NerdTree",
                t = { "<cmd>NvimTreeToggle<cr>", "Toggle NerdTree" },
                f = { "<cmd>NvimTreeFocus<cr>", "Focus NerdTree" },
                c = { "<cmd>NvimTreeClose<cr>", "Close NerdTree" },
                r = { "<cmd>NvimTreeRefresh<cr>", "Refresh NerdTree" },
            },
        },
        -- toggle term
        [';'] = {
            "<cmd>ToggleTerm<cr>",
            "Open Terminal",
        },
        -- github
        g = { "Github" },
        ['gh'] = {
            name = "Github",
            d = { "<cmd>Git add .<cr>", "Github add All" },
            c = { "<cmd>Git commit<cr>", "Github Commit" },
            p = { "Pull & Push" },
            ['pl'] = { "<cmd>Git pull<cr>", "Github Pull" },
            ['ph'] = { "<cmd>Git push<cr>", "Github push" },
        },
        -- trouble line
        ['t'] = {
            name = "TroubleLine,TagBar",
            t = { "<cmd>TroubleToggle<cr>", "Toggle Trouble Line" },
            r = { "<cmd>TroubleRefresh<cr>", "Refresh Trouble Line" },
            c = { "<cmd>TroubleClose<cr>", "Close Trouble Line" },
        },
        -- tagbar
        ['tb'] = {
            name = "TagBar",
            t = { "<cmd>TagbarToggle<cr>", "TagBar Toggle" },
        },
        -- VimWiki
        w = {
            name = "VimWiki",
            ["\\"] = "VimWiki Extra",
        },
    }
}, { mode = 'n', silent = true, noremap = true, nowait = true })

-- visual mode

-- terminal mode
map.register({
    ["<esc>"] = { "<cmd>stopinsert<cr>", "Quit Terminal Mode" },
}, { mode = 't', silent = true, noremap = true })
