vim.loader.enable() -- byte-compiles and caches Lua files
-- system
require("config")
require("keymaps")

-- lazy.nvim
require("lazy-nvim")

-- theme
require("theme")

-- autocmd
require("autocmd")

-- neovide
if vim.g.neovide then
	require("neovide")
end
