return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("claude-code").setup({
      keymaps = {
        toggle = {
          normal = "<leader>cc",
          terminal = "<leader>cc",
          variants = {
            continue = "<leader>cC",
            resume = "<leader>cr",
            verbose = "<leader>cv",
          },
        },
        window_navigation = true,
        scrolling = true,
      },
    })
  end,
}
