-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/draco/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/draco/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/draco/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/draco/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/draco/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  edge = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/edge"
  },
  everforest = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/everforest"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/iceberg.vim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["minimap.vim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/minimap.vim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-reload"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/nvim-reload"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/onedark.vim"
  },
  onehalf = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/onehalf"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["scrollbar.nvim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/scrollbar.nvim"
  },
  ["seoul256.vim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/seoul256.vim"
  },
  sonokai = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/sonokai"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["twilight.nvim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/twilight.nvim"
  },
  ["vim-colors-xcode"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/vim-colors-xcode"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gdscript3"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/vim-gdscript3"
  },
  ["vim-godot"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/vim-godot"
  },
  ["vim-monokai"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/vim-monokai"
  },
  ["vim-one"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/vim-one"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  vimagit = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/vimagit"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/draco/.local/share/nvim/site/pack/packer/start/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
