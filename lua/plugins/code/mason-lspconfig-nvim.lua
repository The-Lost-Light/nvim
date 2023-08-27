return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim"
	},
	lazy = true,
	opts = {
		ensure_installed = {
			"lua_ls",
			"rust_analyzer",
			"clangd"
		},
		automatic_installation = true,
		handlers = {
			function (server_name)
				require("lspconfig")[server_name].setup{}
			end,
			["clangd"] = function ()
				require("lspconfig").clangd.setup {
					cmd = {
						"clangd",
						"--header-insertion=never",
						"--query-driver=/opt/homebrew/opt/llvm/bin/clang",
						"--all-scopes-completion",
						"--completion-style=detailed",
					}
				}
			end
		}
	}
}