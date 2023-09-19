local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "jsonls", "yamlls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}

lspconfig.jsonls.setup {
  settings = {
    json = {
      schemas = require("schemastore").json.schemas(),
      validate = {
        enable = true,
      },
    },
  },
}

-- require('lspconfig').yamlls.setup {
--     settings = {
--         yaml = {
--             schemaStore = {
--                 -- You must disable built-in schemaStore support if you want to use
--                 -- this plugin and its advanced options like `ignore`.
--                 enable = false,
--                 -- Avoid TypeError: Cannot read properties of undefined (reading 'length')
--                 url = ""
--             },
--             schemas = require('schemastore').yaml.schemas()
--         }
--     }
-- }
