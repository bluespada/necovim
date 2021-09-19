-- colorizer
require'colorizer'.setup {}

-- lualine
require'config/lualine'

-- treesitter
require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'tsx','vim','dart','cpp','c','python','lua','bash','javascript','css','html','php','typescript' },
    highlight = {
        enable = true
    }
}

-- lsp
require'lspinstall'.setup()

require'config.codeaction'

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
    require'lspconfig'[server].setup{ on_attach=require'completion'.on_attach }
end

-- buffer line
require'bufferline'.setup {}

-- dashboard
vim.g.dashboard_default_executive='telescope'

vim.g.dashboard_custom_header={
        '',
    '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⡿⠿⢿⣿⣿⣿⣿⣿⣿',
    '⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠛⠉⠉⠉⠙⠻⣅⠀⠈⢧⠀⠈⠛⠉⠉⢻⣿⣿',
    '⣿⣿⣿⣿⣿⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⣤⡶⠟⠀⠀⣈⠓⢤⣶⡶⠿⠛⠻⣿',
    '⣿⣿⣿⣿⣿⢣⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣀⣴⠶⠿⠿⢷⡄⠀⠀⢀⣤⣾⣿',
    '⣿⣿⣿⣿⣡⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣦⣤⣤⡀⠀⢷⡀⠀⠀⣻⣿⣿',
    '⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡈⠛⠶⠛⠃⠈⠈⢿⣿⣿',
    '⣿⣿⠟⠘⠀⠀⠀⠀⠀⠀⠀⠀⢀⡆⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠈⣿⣿',
    '⣿⠏⠀⠁⠀⠀⠀⠀⠀⠀⠀⢀⣶⡄⠀⠀⠀⠀⠀⠀⣡⣄⣿⡆⠀⠀⠀⠀⣿⣿',
    '⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠛⠛⢛⣲⣶⣿⣷⣉⠉⢉⣥⡄⠀⠀⠀⠨⣿⣿',
    '⡇⢠⡆⠀⠀⢰⠀⠀⠀⠀⢸⣿⣧⣠⣿⣿⣿⣿⣿⣿⣷⣾⣿⡅⠀⠀⡄⠠⢸⣿',
    '⣧⠸⣇⠀⠀⠘⣤⡀⠀⠀⠘⣿⣿⣿⣿⣿⠟⠛⠻⣿⣿⣿⡿⢁⠀⠀⢰⠀⢸⣿',
    '⣿⣷⣽⣦⠀⠀⠙⢷⡀⠀⠀⠙⠻⠿⢿⣷⣾⣿⣶⠾⢟⣥⣾⣿⣧⠀⠂⢀⣿⣿',
    '⣿⣿⣿⣿⣷⣆⣠⣤⣤⣤⣀⣀⡀⠀⠒⢻⣶⣾⣿⣿⣿⣿⣿⣿⣿⢀⣀⣾⣿⣿',
    '',
}

vim.g.dashboard_custom_footer={
    "If your oppurtinites doesn't come to you , then make it ✨✨✨",
}

vim.g.dashboard_custom_shortcut={
    last_session       = 'leader d l',
    find_history       = 'leader d h',
    find_file          = 'leader d f',
    new_file           = 'leader d n',
    change_colorscheme = 'leader d c',
    find_word          = 'leader d w',
    book_marks         = 'leader d b',
}

-- smooths scroll
vim.g.smoothie_enabled=true
vim.g.smoothie_no_default_mappings=false

-- minimap
vim.g.minimap_width=10
vim.g.minimap_auto_start=0
vim.g.minimap_auto_start_win_enter=0

-- twilight
require'twilight'.setup {
    dimming = {
        alpha = 0.25,
        -- color = { "Normal","#FFFFFF" },
    },
    context = 10,
    expand = {
        "function",
        "method",
        "table",
        "if_statment",
    },
    exclude = {},
}

-- zen mode
require'zen-mode'.setup{}

-- wiki
vim.g.vimwiki_list = {{
    path = '~/MyNotes', -- this is a path of your notes / wiki directory
    ext = '.wiki' -- i use wiki extension but if u want you can change it to .md files
    -- for more informations you can see : https://github.com/vimwiki/vimwiki
}}

-- move line config
vim.g.move_key_modifier = 'C'
