local load = {}

load.core = {
    { 'wbthomason/packer.nvim' }, -- packer
    { 'famiu/nvim-reload', requires = { 'nvim-lua/plenary.nvim', opt = true } }, -- reload plugins
    { 'ryanoasis/vim-devicons' }, -- vim icons
    { 'norcalli/nvim-colorizer.lua' }, -- colorizer
    { 'tpope/vim-fugitive' }, -- git utils
    { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } },
    { 'cohama/lexima.vim' }, -- autoclose plugins
    { 'kyazdani42/nvim-tree.lua', 'preservim/nerdcommenter' }, -- file & commenter
    { 'preservim/tagbar' }, -- tagbar
    { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }, -- telescope
    { 'glepnir/dashboard-nvim' }, -- dashboard
    { 'hoob3rt/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }, -- bar plugins
    { 'akinsho/bufferline.nvim' }, -- tabline plugins
    { 'psliwka/vim-smoothie' }, -- smooth scrolls
    { 'thmsmlr/nvim-treesitter' }, -- treesitter forked | temporary use this forks for full working with dart code.
    { 'neovim/nvim-lspconfig' }, -- lspconfig
    { 'hrsh7th/nvim-cmp',
        requires = { 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline',
            'octaltree/cmp-look', 'L3MON4D3/LuaSnip', 'SirVer/ultisnips', 'hrsh7th/cmp-nvim-lsp-signature-help',
            'quangnguyen30192/cmp-nvim-ultisnips' } }, -- new completion
    { 'glepnir/lspsaga.nvim' }, -- fork from lsp saga
    { 'jose-elias-alvarez/null-ls.nvim' }, -- null ls
    { 'folke/trouble.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }, -- trouble vim
    { 'onsails/lspkind-nvim' }, -- lsp kind
    { 'folke/which-key.nvim' }, -- whichkey
    { 'williamboman/nvim-lsp-installer' }, -- lsp auto installer
    { 'lukas-reineke/lsp-format.nvim' }, -- autoformatter
    { 'ray-x/lsp_signature.nvim' }, -- lsp signature
    { 'khaveesh/vim-fish-syntax' }, -- fish shell highlighting
    { 'vimwiki/vimwiki' }, -- wiki plugins use as notes
    { 'lukas-reineke/indent-blankline.nvim' }, -- indent blank line
    { 'matze/vim-move' }, -- move line
    { 'francoiscabrol/ranger.vim' }, -- vim ranger
    { 'jghauser/mkdir.nvim', config = function() require 'mkdir' end }, -- makedir when folder not exist
    { 'itchyny/calendar.vim' }, -- calendar
    { "akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
        require("toggleterm").setup()
    end },
    { 'rcarriga/nvim-notify' }, -- notify
    { 'natecraddock/sessions.nvim', requires = { 'rcarriga/nvim-notify' } }, -- session manager
    { 'j-hui/fidget.nvim' }, -- Eye candy for the impatient
    { 'jceb/vim-orgmode', requires = { 'tpope/vim-speeddating' } }, -- Org Mode
}

function load.load(bootstrap, users)
    require 'packer'.startup(function(use)
        for _, item in ipairs(load.core) do
            use(item)
        end
        for _, item in ipairs(users) do
            use(item)
        end
        if bootstrap then
            require 'packer'.sync()
        end
    end)
end

function load.config(bootstrap, opt)
    if not bootstrap then
        for _, item in ipairs(opt) do
            item()
        end
    end
end

return load
