-- lazy.nvim core
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- lazy.nvim config
require("lazy").setup({
	spec = {
		{import = "plugins.ui"},
		{import = "plugins.ui.theme"},
		{import = "plugins.editor"},
		{import = "plugins.utility"},
		{import = "plugins.code"},
	}
})