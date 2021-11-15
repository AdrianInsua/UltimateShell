local nvim_lsp = require 'lspconfig'
local wbin = require 'suampa.lsp.windows'

require 'suampa.lsp.cmp'
require 'suampa.lsp.tabnine'
require 'suampa.lsp.sumneko'
require 'suampa.lsp.eslint'

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true

local function config(_config)
	return vim.tbl_deep_extend("force", {
		capabilities = capabilities
	}, _config or {})
end

-- Enable the following language servers
local servers = { 'tsserver' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup(config())
end

local windows_servers = {'html', 'yamlls', 'cssls', 'jsonls'}
for _, lsp in ipairs(windows_servers) do
  nvim_lsp[lsp].setup(config({ cmd = {wbin[lsp], "--stdio" }  }))
end

