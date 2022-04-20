-- enable capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- global setup nvim_lsp
local nvim_lsp = require 'lspconfig'
local lsp_signature_cfg = {
    bind = true,
    verbose = true,
    hint_enable = true,
    hint_prefix = "😈 ",
}

-- disable copilot if detected
if vim.api.nvim_eval("exists('g:necovim_disable_copilot')") == 1 then
    if vim.api.nvim_eval("g:necovim_disable_lsp_copilot") == 1 then
        vim.cmd(":Copilot disable")
    end
end

local on_attach = function(client, bufnr)
    -- enable auto formating

    if vim.api.nvim_eval("exists('g:necovim_disable_lsp_autoformat')") == 1 then
        if vim.api.nvim_eval("g:necovim_disable_lsp_autoformat") == 1 then
            return
        end
    else
        if client.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
        end
    end
end

-- lspkind
local lspkind = require 'lspkind'
lspkind.init {}

-- setup cmp with config lspkind is a default formatting and its auto completion
local cmp = require 'cmp'

cmp.setup {
    mapping = {
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end
    },

    snippet = {
        expand = function(args)
            -- vim.fn["vsnip#anonymouse"](args.body)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },

    formatting = {
        format = lspkind.cmp_format({
            with_text = true,
            menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                luasnip = "[LuaSnip]",
                nvim_lua = "[Lua]",
                latex_symbols = "[Latex]",
            }),
        }),
    },

    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp' },
        },
        {
            { name = 'buffer', option = {
                get_bufnrs = function() return { vim.api.nvim_get_current_buf() } end
            } },
            { name = 'look', keyword_length = 2, option = { convert_case = true, loud = true } }
        }
    ),

    view = {
        entries = 'native'
    }

}

local lsp_cmp = require 'cmp_nvim_lsp'

nvim_lsp.vimls.setup {
    capabilities = lsp_cmp.update_capabilities(capabilities),
}

-- settings flutter-tools
--[[require'flutter-tools'.setup {]]
--[[flutter_path = "/opt/flutter/bin/flutter",]]
--[[lsp = {]]
--[[capabilities = lsp_cmp.update_capabilities(capabilities),]]
--[[}]]
--[[}]]

require 'config.codeaction'

local lsp_installer = require 'nvim-lsp-installer'
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = on_attach,
        capabilities = capabilities
    }

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)
-- Lsp Trouble
local trouble = require 'trouble'
trouble.setup {}

-- Lsp Null
local null_ls = require 'null-ls'
null_ls.setup {
    on_attach = function(c)
        if c.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
        end
    end,
}
