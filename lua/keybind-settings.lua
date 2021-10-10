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
-- telescope keybind
map('n','<leader>ff',':Telescope find_files<CR>',{silent=true,noremap=true})
map('n','<leader>fg',':Telescope live_grep<CR>',{silent=true,noremap=true})
map('n','<leader>fb',':Telescope buffers<CR>',{silent=true,noremap=true})
map('n','<leader>fh',':Telescope hep_tags<CR>',{silent=true,noremap=true})
-- save shortcuts
map('n','<leader>ss',':w!<CR>',{silent=true,noremap=true})
-- buffer move
map('n','<C-S-Right>',':BufferLineMoveNext<CR>',{silent=true,noremap=true})
map('n','<C-S-Left>',':BufferLineMovePrev<CR>',{silent=true,noremap=true})
map('n','<A-S-l>',':bnext<CR>',{silent=true,noremap=true})
map('n','<A-S-h>',':bprevious<CR>',{silent=true,noremap=true})
-- minimap toggle
map('n','<leader>tm',':MinimapToggle<CR>',{silent=true,noremap=true})
-- Inrement/Decrement
map('n','<C-a>',':-<CR>',{silent=true,noremap=true})
map('n','<C-x>',':+<CR>',{silent=true,noremap=true})
-- codeactions
map('n','cf',':Lspsaga lsp_finder<CR>',{ silent=true,noremap=true })
map('n','ca',':Lspsaga code_action<CR>',{ silent=true,noremap=true })
map('n','cd',':Lspsaga hover_doc<CR>',{ silent=true,noremap=true })
map('n','cs',':Lspsaga show_cursor_diagnostics<CR>',{ silent=true , noremap=true  })
map('n','cz',':Lspsaga preview_definition<CR>',{ silent=true,noremap=true })
-- ranger
map('n','<leader>dff',':Ranger<CR>',{ silent = true, noremap = true })
