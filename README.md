# necovim
Necovim is a my neovim configurations file , included plugins , keybindings , settings and lack of lua hacks.
![result](https://raw.githubusercontent.com/bluespada/necovim/main/image/necovim.png)

## Preinstall

due to plugins requirments you need to install :

* fzf [required by Dashboard]
* bat [required by fzf]
* ripgrep [required by telescope.vim]

## How to install

* First you need clone this repository.
* Copy all file into your `~/.config/nvim/` folders.
* After install code-minimap you can open neovim and wait for more second until all plugins installed or you can type `:PackerInstall` for install all plugins.
* Happy hacking :)

Note : Before using this plugins please define your shell on `lua/nvim-settings.lua`

## FEATURES

* File explorer with [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
* Autocompletion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* Git integration with [fugitive.nvim](https://github.com/tpope/vim-fugitive) and [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
* Statusline with [lualine]()
* Tabline with [bufferline.vim]()
* Fuzzy with [Telescope]()
* Syntax with [Treesitter]()
* AI pilot with [Github Copilot]()
* LSP with inbuild [Native LSP]()

## LSP

due to enable lsp you can type command to install lsp language server:
```
:LspInstallInfo (show prompt list available language server)
:LspInstall <language> (install language server)
```

## Keybind

to edits keybind you can edit file `lua/nvim-keybind.lua`
