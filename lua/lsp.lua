-- setup mason-lspconfig
require("mason-lspconfig").setup({
	-- a list of servers to automatically install if they're not already installed
	ensure_installed = {
		"lua_ls",
		"pyright"
	},
	-- whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed
	automatic_installation = true
})

-- setup lspconfig hook by mason-lspconfig
require("mason-lspconfig").setup_handlers({
	-- mason-lspconfig automatic server setup
	function (server_name)
		require("lspconfig")[server_name].setup{}
	end,

	-- overrides for specific servers
	["lua_ls"] = function ()
		require("lspconfig").lua_ls.setup {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" }
					}
				}
			}
		}
	end
})