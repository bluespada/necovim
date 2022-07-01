local map = vim.api.nvim_set_keymap
local wmap = require 'which-key'.register

map('n', '<leader>r', ':Reload<CR>', { silent = true, noremap = true })
-- nerd tree shortcuts
wmap({
    ["\\n"] = "NerdTree"
})
map('n', '<leader>nt', ':NvimTreeToggle<CR>', { silent = true, noremap = true })
map('n', '<leader>nf', ':NvimTreeFocus<CR>', { silent = true, noremap = true })
map('n', '<leader>nc', ':NvimTreeClose<CR>', { silent = true, noremap = true })
map('n', '<leader>nr', ':NvimTreeRefresh<CR>', { silent = true, noremap = true })
-- packer shortcuts
wmap({
    ["\\p"] = "Packer"
}, { mode = 'n' })
map('n', '<leader>pi', ':PackerInstall<CR>', { silent = true, noremap = true })
map('n', '<leader>pc', ':PackerClean<CR>', { silent = true, noremap = true })
-- dashboard keymaps
wmap({
    ["<space>d"] = "Dashboard",
    ["<space>dd"] = "Open Dashboard",
    ["<space>dl"] = "Load Session",
    ["<space>dc"] = "Open Configuration",
    ["<space>dn"] = "Create New File",
    ["<space>dw"] = "Find Words",
    ["<space>df"] = "Find File",
}, { mode = 'n' })
map('n', '<space>dd', ':Dashboard<CR>', { silent = true, noremap = true })
map('n', '<space>df', ':Telescope find_files<CR>', { silent = true, noremap = true })
map('n', '<space>dc', ':lua DashboardNvimConfig()<CR>', { silent = true, noremap = true })
map('n', '<space>dw', ':Telescope live_grep<CR>', { silent = true, noremap = true })
map('n', '<space>dl', ':lua LoadSession()<CR>', { silent = true, noremap = true })
map('n', '<space>dn', ':enew<CR>', { silent = true, noremap = true })
map('n', '<C-c>', ':bd<CR>', { silent = true, noremap = true })
-- buffer move
map('n', '<A-L>', ':BufferLineMoveNext<CR>', { silent = true, noremap = true })
map('n', '<A-H>', ':BufferLineMovePrev<CR>', { silent = true, noremap = true })
map('n', '<A-l>', ':bnext<CR>', { silent = true, noremap = true })
map('n', '<A-h>', ':bprevious<CR>', { silent = true, noremap = true })
-- minimap toggle
map('n', '<leader>tm', ':MinimapToggle<CR>', { silent = true, noremap = true })
-- Inrement/Decrement
map('n', '<C-a>', ':-<CR>', { silent = true, noremap = true })
map('n', '<C-x>', ':+<CR>', { silent = true, noremap = true })
-- codeactions
wmap({
    c = "CodeActions"
})
map('n', 'cf', ':Lspsaga lsp_finder<CR>', { silent = true, noremap = true })
map('n', 'ca', ':Lspsaga code_action<CR>', { silent = true, noremap = true })
map('n', 'cd', ':Lspsaga hover_doc<CR>', { silent = true, noremap = true })
map('n', 'cs', ':Lspsaga show_line_diagnostics<CR>', { silent = true, noremap = true })
map('n', 'cz', ':Lspsaga preview_definition<CR>', { silent = true, noremap = true })
map('n', 'cg', ':Lspsaga goto_definition<CR>', { silent = true, noremap = true })
map('n', 'cj', ':Lspsaga jump_to_implementation<CR>', { silent = true, noremap = true })
-- ranger
map('n', '<leader>dr', ':Ranger<CR>', { silent = true, noremap = true })
-- calendar
map('n', '<leader>cal', ':Calendar<CR>', { silent = true, noremap = true })
-- Trouble
map('n', '<leader>tt', ':TroubleToggle<CR>', { silent = true, noremap = true })
map('n', '<leader>tr', ':TroubleRefresh<CR>', { silent = true, noremap = true })
map('n', '<leader>tc', ':TroubleClose<CR>', { silent = true, noremap = true })
-- Github
map('n', '<leader>ghd', ':Git add .<CR>', { silent = true, noremap = true })
map('n', '<leader>ghc', ':Git commit<CR>', { silent = true, noremap = true })
map('n', '<leader>ghpl', ':Git pull<CR>', { silent = true, noremap = true })
map('n', '<leader>ghph', ':Git push<CR>', { silent = true, noremap = true })
-- ToggleTerm
map('n', '<leader>;', ':ToggleTerm <CR>', { silent = true, noremap = true })
-- Tagbar
map('n', '<leader>tb', ':TagbarToggle <CR>', { silent = true, noremap = true })
