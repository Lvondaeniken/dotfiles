return {
  "lewis6991/gitsigns.nvim",
  opts = function()
    return require "configs.gitsigns"
  end,
  config = function(_, opts)
    require("gitsigns").setup(opts)
  end,
}
