require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'tsx','vim','cpp','c','python','lua','bash','javascript','css','html','php','typescript' },
    highlight = {
        enable = true,
        disable = {}
    },
    indent = {
        enable = true,
        disable = {}
    }
}
