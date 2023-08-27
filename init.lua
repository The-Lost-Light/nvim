vim.loader.enable() -- byte-compiles and caches Lua files
-- system
require("config")
require("keymaps")

-- lazy.nvim
require("lazy-nvim")

-- theme
require("theme")

-- temporary fix the folding bug when use telescope open file
vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = { "*" },
	command = "normal zx zR"
})
