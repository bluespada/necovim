local packer = {}
local fn = vim.fn
local cmd = vim.api.nvim_command
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

function packer.check_and_install()
    if fn.empty(fn.glob(install_path)) > 0 then
        packer.bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
            install_path })
        print(packer.bootstrap)
        cmd('packadd packer.nvim')
    end
    require 'packer'.init {
        git = { clone_timeout = 300 },
        display = {
            open_fn = function()
                return require("packer.util").float { border = "single" }
            end,
        },
    }
end

return packer

