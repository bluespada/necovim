-- enable capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- global setup nvim_lsp
local nvim_lsp = require'lspconfig'
local lsp_signature_cfg = {
    bind = true,
    verbose = true,
    hint_enable = true,
    hint_prefix = "😈 ",
}

local on_attach = function(client,bufnr)
    -- enable auto formating
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
end

-- lspkind
local lspkind = require'lspkind'
lspkind.init { }

-- setup cmp with config lspkind is a default formatting and its auto completion
local cmp = require'cmp'

cmp.setup {

	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymouse"](args.body)
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
    { name = 'buffer' },
    { name = 'look', keyword_length=2, option={ convert_case = true, loud = true } }
  })
}

local lsp_cmp = require'cmp_nvim_lsp'

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

require'config.codeaction'

local lsp_installer = require'nvim-lsp-installer'
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = on_attach,
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

-- auto format

--[[nvim_lsp.diagnosticls.setup {]]
  --[[on_attach = on_attach,]]
  --[[filetypes = { 'python', 'xml', 'lua', 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'markdown', 'pandoc' },]]
  --[[init_options = {]]
    --[[linters = {]]
      --[[eslint = {]]
        --[[command = 'eslint_d',]]
        --[[rootPatterns = { '.git' },]]
        --[[debounce = 100,]]
        --[[args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },]]
        --[[sourceName = 'eslint_d',]]
        --[[parseJson = {]]
          --[[errorsRoot = '[0].messages',]]
          --[[line = 'line',]]
          --[[column = 'column',]]
          --[[endLine = 'endLine',]]
          --[[endColumn = 'endColumn',]]
          --[[message = '[eslint] ${message} [${ruleId}]',]]
          --[[security = 'severity']]
        --[[},]]
        --[[securities = {]]
          --[[[2] = 'error',]]
          --[[[1] = 'warning']]
        --[[}]]
      --[[},]]
    --[[},]]
    --[[filetypes = {]]
      --[[javascript = 'eslint',]]
      --[[javascriptreact = 'eslint',]]
      --[[typescript = 'eslint',]]
      --[[typescriptreact = 'eslint',]]
    --[[},]]
    --[[formatters = {]]
      --[[eslint_d = {]]
        --[[command = 'eslint_d',]]
        --[[args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },]]
        --[[rootPatterns = { '.git' },]]
      --[[},]]
      --[[prettier = {]]
        --[[command = 'prettier',]]
        --[[args = { '--stdin-filepath', '%filename' }]]
      --[[}]]
    --[[},]]
    --[[formatFiletypes = {]]
        --[[css = 'prettier',]]
        --[[javascript = 'eslint_d',]]
        --[[javascriptreact = 'eslint_d',]]
        --[[json = 'prettier',]]
        --[[scss = 'prettier',]]
        --[[less = 'prettier',]]
        --[[typescript = 'eslint_d',]]
        --[[typescriptreact = 'eslint_d',]]
        --[[markdown = 'prettier',]]
        --[[python = 'prettier',]]
        --[[xml = "prettier",]]
        --[[lua = "prettier",]]
    --[[}]]
  --[[}]]
--[[}]]


-- Lsp Trouble
local trouble = require'trouble'
trouble.setup {  }

-- Lsp Null
local null_ls = require'null-ls'
null_ls.setup {
  on_attach = function(c)
    if c.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end,
}
