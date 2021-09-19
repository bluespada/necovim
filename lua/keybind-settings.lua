---@diagnostic disable-next-line: undefined-global
local map = vim.api.nvim_set_keymap

map('n','<leader>r',':Reload<CR>',{silent=true,noremap=true})
-- nerd tree shortcuts
map('n','<leader>nt',':NERDTreeToggle<CR>',{silent=true,noremap=true})
map('n','<leader>nf',':NERDTreeFocus<CR>',{silent=true,noremap=true})
-- packer shortcuts
map('n','<leader>pi',':PackerInstall<CR>',{silent=true,noremap=true})
map('n','<leader>pc',':PackerClean<CR>',{silent=true,noremap=true})
-- dashboard keymaps
map('n','<leader>d',':Dashboard<CR>',{silent=true,noremap=true})
map('n','<leader>db',':DashboardJumpMarks<CR>',{silent=true,noremap=true})
map('n','<leader>df',':DashboardFindFile<CR>',{silent=true,noremap=true})
map('n','<leader>dw',':DashboardFindWord<CR>',{silent=true,noremap=true})
map('n','<leader>dl',':SessionLoad<CR>',{silent=true,noremap=true})
map('n','<leader>dh',':DashboardFindHistory<CR>',{silent=true,noremap=true})
map('n','<leader>dc',':DashboardChangeColorscheme<CR>',{silent=true,noremap=true})
map('n','<leader>dn',':DashboardNewFile<CR>',{silent=true,noremap=true})
map('n','<leader>z',':ZenMode<CR>',{silent=true,noremap=true})
map('n','<leader>tw',':Twilight<CR>',{silent=true,noremap=true})
map('n','<C-c>',':bd<CR>',{silent=true,noremap=true})
map('n','gh',":CocFix<CR>",{silent=true,noremap=true})
-- find line
map('n','<leader>fl',':Lines<CR>',{silent=true,noremap=true})
-- save shortcuts
map('n','<leader>ss',':w!<CR>',{silent=true,noremap=true})
-- buffer move
map('n','<C-S-Right>',':BufferLineMoveNext<CR>',{silent=true,noremap=true})
map('n','<C-S-Left>',':BufferLineMovePrev<CR>',{silent=true,noremap=true})
map('n','<C-Right>',':BufferLineCycleNext<CR>',{silent=true,noremap=true})
map('n','<C-Left>',':BufferLineCycleNext<CR>',{silent=true,noremap=true})
-- disable arrow movement
-- this is for my habits to use hjkl
-- if you wanna enable this you can comment all map belows
map('n','<Left>','<nop>',{silent=true,noremap=true})
map('n','<Up>','<nop>',{silent=true,noremap=true})
map('n','<Down>','<nop>',{silent=true,noremap=true})
map('n','<Right>','<nop>',{silent=true,noremap=true})
-- minimap toggle
map('n','<leader>tm',':MinimapToggle<CR>',{silent=true,noremap=true})


