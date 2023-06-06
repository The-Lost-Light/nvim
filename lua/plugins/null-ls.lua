return {
	"jose-elias-alvarez/null-ls.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	init = function()
		require("null-ls").setup({
			sources = {
				require("null-ls").builtins.formatting.stylua, -- an opinionated code formatter for Lua
				-- null_ls.builtins.diagnostics.eslint,
				-- null_ls.builtins.completion.spell,
				-- null_ls.builtins.formatting.black
			}
		})
	end
}