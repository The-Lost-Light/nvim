return {
	"williamboman/mason.nvim",
	build = ":MasonUpdate",
	lazy = true,
	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗"
			}
		}
	}
}