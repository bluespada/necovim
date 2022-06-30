local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
    execute "PackerInstall"
end

local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
    return
end

packer.init {
    -- package_root = require("packer.util").join_paths(vim.fn.stdpath "data", "lvim", "pack"),
    git = { clone_timeout = 300 },
    display = {
        open_fn = function()
            return require("packer.util").float { border = "single" }
        end,
    },
}

return require("packer").startup(function(use)
    use 'wbthomason/packer.nvim' -- packer
    use { 'famiu/nvim-reload', requires = { 'nvim-lua/plenary.nvim', opt = true } } -- reload plugins
    use { 'ryanoasis/vim-devicons' } -- vim icons
    use { 'norcalli/nvim-colorizer.lua' } -- colorizer
    use { 'tpope/vim-fugitive' } -- git utils
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    use { 'cohama/lexima.vim' } -- autoclose plugins
    use { 'marko-cerovac/material.nvim', 'metalelf0/jellybeans-nvim', 'morhetz/gruvbox', 'joshdick/onedark.vim',
        'tomasiser/vim-code-dark', 'ayu-theme/ayu-vim', 'bluespada/justblack.vim' } -- theme
    use { 'catppuccin/nvim', as = 'catppuccin' } --theme
    use { 'kyazdani42/nvim-tree.lua', 'preservim/nerdcommenter' } -- file & commenter
    use { 'preservim/tagbar' } -- tagbar
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- telescope
    use { 'glepnir/dashboard-nvim' } -- dashboard
    use { 'hoob3rt/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } } -- bar plugins
    use { 'akinsho/bufferline.nvim' } -- tabline plugins
    use { 'psliwka/vim-smoothie' } -- smooth scrolls
    -- use { 'nvim-treesitter/nvim-treesitter', disable = true } -- treesitter | disable this plugins due issue with dart code.
    use { 'thmsmlr/nvim-treesitter' } -- treesitter forked | temporary use this forks for full working with dart code.
    use { 'neovim/nvim-lspconfig' } -- lspconfig
    use { 'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline',
            'octaltree/cmp-look', 'L3MON4D3/LuaSnip', 'SirVer/ultisnips', 'hrsh7th/cmp-nvim-lsp-signature-help',
            'quangnguyen30192/cmp-nvim-ultisnips' } } -- new completion
    -- codeaction is disable because currently not support on neovim 0.6.0
    use { 'glepnir/lspsaga.nvim' } -- fork from lsp saga
    use { 'jose-elias-alvarez/null-ls.nvim' } -- null ls
    use { 'folke/trouble.nvim', requires = { 'kyazdani42/nvim-web-devicons' } } -- trouble vim
    use { 'onsails/lspkind-nvim' } -- lsp kind
    use { 'williamboman/nvim-lsp-installer' } -- lsp auto installer
    use { 'lukas-reineke/lsp-format.nvim' } -- autoformatter
    use { 'ray-x/lsp_signature.nvim' } -- lsp signature
    -- disable coc , and use LSP Instead
    use { 'akinsho/flutter-tools.nvim', requires = { 'nvim-lua/plenary.nvim', 'mfussenegger/nvim-dap' } } -- flutter langugae support (sometime i have a flutter projects)
    use { 'habamax/vim-godot' } -- godot langugae support (sometime i have a flutter projects)
    use { 'khaveesh/vim-fish-syntax' } -- fish shell highlighting
    -- use { 'neoclide/coc.nvim' , branch = 'release', run=function()
    --    vim.cmd("CocInstall coc-eslint coc-emmet coc-css coc-highlight coc-yaml coc-snippets coc-prettier coc-json coc-tsserver coc-pairs coc-tslint coc-python coc-git")
    -- end } -- Coc
    use { 'vimwiki/vimwiki' } -- wiki plugins use as notes
    use { 'lukas-reineke/indent-blankline.nvim' } -- indent blank line
    use { 'matze/vim-move' } -- move line
    use { 'francoiscabrol/ranger.vim' } -- vim ranger
    -- utilities
    use { 'jghauser/mkdir.nvim', config = function() require 'mkdir' end } -- makedir when folder not exist
    use { 'itchyny/calendar.vim' } -- calendar
    use { "akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
        require("toggleterm").setup()
    end }
    use { 'rcarriga/nvim-notify' } -- notify
    use { 'natecraddock/sessions.nvim', requires = { 'rcarriga/nvim-notify' } } -- session manager
    use { 'j-hui/fidget.nvim' } -- Eye candy for the impatient
    use { 'jceb/vim-orgmode', requires = { 'tpope/vim-speeddating' } } -- Org Mode
end)
