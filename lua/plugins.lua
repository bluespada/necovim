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
    use 'wbthomason/packer.nvim' -- packer
    use { 'famiu/nvim-reload', requires= { 'nvim-lua/plenary.nvim', opt=true} } -- reload plugins
    use { 'ryanoasis/vim-devicons' } -- vim icons
    use { 'norcalli/nvim-colorizer.lua' } -- colorizer
    use { 'tpope/vim-fugitive' } -- git utils
    use { 'cohama/lexima.vim' } -- autoclose plugins
    use { 'morhetz/gruvbox','joshdick/onedark.vim','ayu-theme/ayu-vim' } -- theme
    use { 'preservim/nerdtree' , 'preservim/nerdcommenter' } -- file & commenter
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- telescope
    use { 'glepnir/dashboard-nvim' } -- dashboard
    use { 'hoob3rt/lualine.nvim',requires = {'kyazdani42/nvim-web-devicons', opt = true } } -- bar plugins
    use { 'akinsho/nvim-bufferline.lua' } -- tabline plugins
    use { 'psliwka/vim-smoothie' } -- smooth scrolls
    use { 'wfxr/minimap.vim','Xuyuanp/scrollbar.nvim' } -- scroll plugins
    use { 'folke/twilight.nvim', 'folke/zen-mode.nvim' } -- zen-mode and dim inactive code
    use { 'nvim-treesitter/nvim-treesitter' } -- treesitter
    use { 'neovim/nvim-lspconfig' } -- lspconfig
    use { 'kabouzeid/nvim-lspinstall' } -- lspinstall
    use { 'nvim-lua/completion-nvim'  } -- completion
    use { 'glepnir/lspsaga.nvim',requires={ 'neovim/nvim-lspconfig' } } -- codeactions
    -- disable coc , and use LSP Instead
    use {'akinsho/flutter-tools.nvim', requires = { 'nvim-lua/plenary.nvim' , 'mfussenegger/nvim-dap' } } -- flutter langugae support (sometime i have a flutter projects)

    -- use { 'neoclide/coc.nvim' , branch = 'release', run=function()
    --    vim.cmd("CocInstall coc-eslint coc-emmet coc-css coc-highlight coc-yaml coc-snippets coc-prettier coc-json coc-tsserver coc-pairs coc-tslint coc-python coc-git")
    -- end } -- Coc
    use { 'vimwiki/vimwiki' } -- wiki plugins use as notes
    use { 'matze/vim-move' } -- move line
end)
