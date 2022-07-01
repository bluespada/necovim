local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- global setup nvim_lsp
local nvim_lsp = require 'lspconfig'

-- disable copilot if detected
if vim.api.nvim_eval("exists('g:necovim_disable_copilot')") == 1 then
    if vim.api.nvim_eval("g:necovim_disable_lsp_copilot") == 1 then
        vim.cmd(":Copilot disable")
    end
end

local on_attach = function(client, bufnr)
    if vim.api.nvim_eval("exists('g:necovim_disable_lsp_autoformat')") == 1 then
        if vim.api.nvim_eval("g:necovim_disable_lsp_autoformat") == 1 then
            return
        end
    else
        local format = require 'lsp-format'
        format.setup {
            typescript = { tab_width = 4 },
            yaml = { tab_width = 2 },
            dart = { tab_width = 2 },
            go = { tab_width = 4 },
        }
        format.on_attach(client)
    end
end

-- lspkind
local lspkind = require 'lspkind'
lspkind.init {}

-- setup cmp with config lspkind is a default formatting and its auto completion
local cmp = require 'cmp'
local cmp_ultisnip = require 'cmp_nvim_ultisnips.mappings'
local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end
cmp.setup {
    window = {
        completion = {
            winhighlight = "Normal:Pmenu,FloatingBorder:Pmenu,Search:None",
            col_offset = -3,
            side_padding = 0,
        }
    },

    mapping = {
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), 'm', true)
            elseif has_words_before() then
                cmp.complete()
            else
                fallback()
            end
        end
    },

    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymouse"](args.body)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },

    formatting = {
        fields = { 'kind', 'abbr', 'menu' },
        format = function(entry, vim_item)
            local kind = require 'lspkind'.cmp_format({
                with_text = true,
                mode = 'symbol_text',
                menu = ({
                    buffer = "[Buffer]",
                    nvim_lsp = "[LSP]",
                    luasnip = "[LuaSnip]",
                    nvim_lua = "[Lua]",
                    latex_symbols = "[Latex]",
                }),
            })(entry, vim_item)
            local strings = vim.split(kind.kind, "%s", { trimempty = true })
            kind.kind = " " .. strings[1] .. " "
            kind.menu = "    (" .. strings[2] .. ")"

            return kind
        end,
    },

    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
            { name = 'vsnip' },
            { name = 'ultisnips' },
            { name = 'nvim_lsp_signature_help' },
        },
        {
            { name = 'buffer', option = {
                get_bufnrs = function() return { vim.api.nvim_get_current_buf() } end
            } },
            { name = 'look', keyword_length = 2, option = { convert_case = true, loud = false } }
        }
    ),

    view = {
        entries = 'native'
    },
}

cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    },
    view = {
        entries = { name = 'wildmenu', separator = '|' }
    }
})

cmp.setup.cmdline(':', {
    completion = { autocomplete = false },
    sources = cmp.config.sources({ { name = 'path' }, { name = 'cmdline' } }),
    view = {
        entries = { name = 'native', separator = '|' }
    }
})

require 'lspsaga'.init_lsp_saga({

})

local lsp_cmp = require 'cmp_nvim_lsp'

nvim_lsp.vimls.setup {
    capabilities = lsp_cmp.update_capabilities(capabilities),
}

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

-- Null-ls
local null_ls = require 'null-ls'
null_ls.setup {
    on_attach = function(client)

    end,
    sources = {
        require 'null-ls'.builtins.formatting.stylua,
        require 'null-ls'.builtins.diagnostics.eslint,
        -- require 'null-ls'.builtins.completion.spell,
    }
}
