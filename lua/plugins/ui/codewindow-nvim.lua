return {
	"gorbit99/codewindow.nvim",
	event = "VeryLazy",
	opts = {
		auto_enable = true,
		screen_bounds = "background"
	},
	config = function(_, opts)
		require("codewindow").setup(opts)
		vim.keymap.set("n", "<leader>m", require("codewindow").toggle_minimap, { desc = "Toggle minimap" })
		vim.api.nvim_set_hl(0, "CodewindowBorder", { fg = "bg" })
	end
}