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
        }
        -- NerdTree
    },
    ['\\'] = {
        ['nt'] = {
            name = "NerdTree",
            t = { "<cmd>NvimTreeToggle<cr>", "Toggle NerdTree" },
            f = { "<cmd>NvimTreeFocus<cr>", "Focus NerdTree" },
            c = { "<cmd>NvimTreeClose<cr>", "Close NerdTree" },
            r = { "<cmd>NvimTreeRefresh<cr>", "Refresh NerdTree" },
        },
        [';'] = {
            "<cmd>ToggleTerm<cr>",
            "Open Terminal",
        },
        ['gh'] = {
            name = "Github",
            d = { "<cmd>Git add .<cr>", "Github add All" },
            c = { "<cmd>Git commit<cr>", "Github Commit" },
            ['pl'] = { "<cmd>Git pull<cr>", "Github Pull" },
            ['ps'] = { "<cmd>Git push<cr>", "Github push" },
        },
    }
}, { mode = 'n', silent = true, noremap = true, nowait = true })

-- visual mode

-- terminal mode
map.register({
    ["<esc>"] = { "<cmd>stopinsert<cr>", "Quit Terminal Mode" },
}, { mode = 't', silent = true, noremap = true })
