-- enable capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- lsp
require'lspinstall'.setup()

-- settings flutter-tools
require'flutter-tools'.setup {
    flutter_path = "/opt/flutter/bin/flutter",
    lsp = {
        on_attach = require'completion'.on_attach,
        capabilities = capabilities
    }
}

require'config.codeaction'

local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{ on_attach=require'completion'.on_attach , capabilities=capabilities }
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end


-- lps kind
require'lspkind'.init {  }

local lsp_installer = require'nvim-lsp-installer'
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = require'completion'.on_attach,
        capabilities=capabilities
    }

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)
