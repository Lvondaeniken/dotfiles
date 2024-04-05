return {
  "williamboman/mason.nvim",
  cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
  opts = function()
    return require "configs.mason"
  end,
  config = function(_, opts)
    require("mason").setup(opts)
  end,
}
