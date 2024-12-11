return {
  "neovim/nvim-lspconfig",
  config = function()
    require("configs.lspconfig").defaults()
    require "configs.lspconfig_add"
  end,
}
