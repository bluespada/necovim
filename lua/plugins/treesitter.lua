require 'nvim-treesitter.configs'.setup {
    ensure_installed = { 'tsx', 'vim', 'cpp', 'c', 'python', 'lua', 'bash', 'javascript', 'css', 'html', 'php','typescript' },
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
        disable = {}
    },
    indent = {
        enable = true,
        disable = {}
    }
}
