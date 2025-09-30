return {
	"stevearc/conform.nvim",
	opts = function()
		return require("configs.conform")
	end,
	config = function(_, opts)
		require("conform").setup(opts)
	end,
}
