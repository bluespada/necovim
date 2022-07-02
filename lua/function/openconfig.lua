function DashboardNvimConfig()
    require 'telescope.builtin'.find_files({ search_dirs = { '~/.config/nvim/' } })
end
