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

return require('packer').startup(function(use)
    -- main packer
	use { 'wbthomason/packer.nvim' }
    -- theme
    use { 'junegunn/seoul256.vim' }
    -- devicons
    use { 'ryanoasis/vim-devicons' }
    -- tree-sitters
    use { '' }
end)
