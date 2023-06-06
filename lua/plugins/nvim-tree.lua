return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	init = function()
		-- disable netrw
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true
		require("nvim-tree").setup()
	end
}