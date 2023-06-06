return {
	-- It's important set up the plugins in the following order
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate", -- :MasonUpdate updates registry contents
		config = true -- automatically run require(MAIN).setup(opts)
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = "williamboman/mason-lspconfig.nvim",
	}
}