local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute "packadd packer.nvim"
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
    use "wbthomason/packer.nvim"
    use {"famiu/nvim-reload",requires={'nvim-lua/plenary.nvim',opt=true}}
    use { 'ryanoasis/vim-devicons' }
    use { 'norcalli/nvim-colorizer.lua' }
    use { 'tpope/vim-fugitive' }
    use { 'tpope/vim-surround' }
    use { 'folke/tokyonight.nvim','arzg/vim-colors-xcode','morhetz/gruvbox','arcticicestudio/nord-vim','sonph/onehalf','joshdick/onedark.vim','sainnhe/sonokai','rakr/vim-one','sainnhe/gruvbox-material','sainnhe/everforest','sickill/vim-monokai','cocopon/iceberg.vim','sainnhe/edge','junegunn/seoul256.vim' }
    use { 'preservim/nerdtree' , 'preservim/nerdcommenter' }
    use { 'junegunn/fzf.vim' }
    use { 'jreybert/vimagit' }
    use { 'glepnir/dashboard-nvim' }
    use { 'hoob3rt/lualine.nvim',requires = {'kyazdani42/nvim-web-devicons', opt = true } }
    use { 'akinsho/nvim-bufferline.lua' }
    use { 'psliwka/vim-smoothie' }
    use { 'wfxr/minimap.vim','Xuyuanp/scrollbar.nvim' }
    use { 'folke/twilight.nvim', 'folke/zen-mode.nvim' } -- @class zen-mode and dim inactive code
    use { 'nvim-treesitter/nvim-treesitter' }
    use { 'folke/trouble.nvim' }
    use { 'neoclide/coc.nvim' , branch = 'release', run=function() 
        vim.cmd("CocInstall coc-eslint coc-emmet coc-css coc-highlight coc-yaml coc-snippets coc-prettier coc-json coc-tsserver coc-pairs coc-tslint coc-python coc-git coc-stylint coc-neco ultisnips")
    end }
end)
