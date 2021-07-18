---@diagnostic disable-next-line: undefined-global
local map = vim.api.nvim_set_keymap

map('n','<leader>r',':Reload<CR>',{silent=true,noremap=true})
map('n','<leader>nt',':NERDTreeToggle<CR>',{silent=true,noremap=true})
map('n','<leader>nf',':NERDTreeFocus<CR>',{silent=true,noremap=true})
map('n','<leader>pi',':PackerInstall<CR>',{silent=true,noremap=true})
map('n','<leader>pc',':PackerClean<CR>',{silent=true,noremap=true})
map('n','<C-Left>',':bNext<CR>',{silent=true,noremap=true})
map('n','<C-Right>',':bnext<CR>',{silent=true,noremap=true})
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


