local N = {}
local packer = require'utils.packer'
local packer_load = require'utils.packer-load'
N.opt = vim.opt
N.cmd = vim.api.nvim_command
-- Initialize N

function N.init()
    -- install package manager
    packer.check_and_install()
    -- load users configurations
    require'config'
    require'utils.config'.init(N,require'necovim.config')
    --  initialize plugins on run
    packer_load.config(packer.bootstrap,require'plugins')
    packer_load.load(packer.bootstrap,require'necovim.config'.plugins)
end

return N
