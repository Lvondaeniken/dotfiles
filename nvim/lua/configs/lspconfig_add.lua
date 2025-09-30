-- EXAMPLE 
local on_attach = require("configs.lspconfig").on_attach
local on_init = require("configs.lspconfig").on_init
local capabilities = require("configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- rust analyzer
vim.lsp.config("rust_analyzer", {
-- lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
})

-- clangd
vim.lsp.config("clangd", {
-- lspconfig.clangd.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
})

-- pyright
vim.lsp.config("pyright", {
-- lspconfig.pyright.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
})

vim.lsp.config("yamlls", {})
-- lspconfig.yamlls.setup({})

-- setup helm-ls
vim.lsp.config("helm_ls", {
-- lspconfig.helm_ls.setup({
  settings = {
    ["helm-ls"] = {
      yamlls = {
        path = "yaml-language-server",
      },
    },
  },
})

-- setup eslint-lsp
vim.lsp.config("eslint", {})

