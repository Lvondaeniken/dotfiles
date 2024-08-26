local options = {
  formatters_by_ft = {
    cpp = {"clang-format"},
    python = {"autopep8"},
    lua = { "stylua" },
    rust = { "rustfmt", lsp_format = "fallback" },
  },
}
return options
