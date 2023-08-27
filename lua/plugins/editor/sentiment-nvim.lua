return {
	"utilyre/sentiment.nvim",
	-- dependencies = {
	-- 	"windwp/nvim-autopairs"
	-- },
	version = "*",
	event = "VeryLazy",
	init = function()
		vim.g.loaded_matchparen = 1
	end,
	config = function()
		require("sentiment").setup()
		vim.api.nvim_set_hl(0, "matchparen", {  bold = true })
	end
}
