require 'which-key'.setup {
    plugins = {
        spelling = {
            enable = true
        }
    },
    window = {
        border = "shadow",
        position = "bottom",
    },
    key_label = {
        ["<space>"] = "SPC",
        ["<cr>"] = "RET",
        ["<tab>"] = "TAB",
    },
    icons = {
        group = " "
    }
}
