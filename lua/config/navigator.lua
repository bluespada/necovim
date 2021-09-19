-- navigator lua configs

local configs = {
    code_action_icon = " ",
    icons = {
        icons = false, -- set to false to use system default ( if you using a terminal does not have nerd/icon)
        -- Code action
        code_action_icon = "🏏", -- "",
        -- code lens
        code_lens_action_icon = " ",
        -- Diagnostics
        diagnostic_head = '🐛',
        diagnostic_err = "📛",
        diagnostic_warn = "👎",
        diagnostic_info = [[👩]],
        diagnostic_hint = [[🐙]],

        diagnostic_head_severity_1 = "🈲",
        diagnostic_head_severity_2 = "☣️",
        diagnostic_head_severity_3 = "👎",
        diagnostic_head_description = "👹",
        diagnostic_virtual_text = "🦊",
        diagnostic_file = "🚑",
        -- Values
        value_changed = "📝",
        value_definition = "🦕",
        -- Treesitter
        match_kinds = {
            var = " ", -- "👹", -- Vampaire
            method = "ƒ ", --  "🍔", -- mac
            ["function"] = " ", -- "🤣", -- Fun
            parameter = "  ", -- Pi
            associated = "🤝",
            namespace = "🚀",
            type = " ",
            field = "🏈"
        },
        treesitter_defult = "🌲"
    }
}

require'navigator'.setup(configs)
