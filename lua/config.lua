local opt = vim.opt

-- Tab
opt.tabstop = 4 -- number of visual spaces per TAB
opt.softtabstop = 4 -- number of spacesin tab when editing
opt.shiftwidth = 4 -- insert 4 spaces on a tab
-- opt.expandtab = true -- use spaces replace tab

-- UI config
opt.number = true -- show line number
opt.relativenumber = true -- add numbers to each line on the left side
opt.cursorline = true -- highlight cursor line underneath the cursor horizontally
opt.fillchars = 'eob: ' -- replace '~' to blank
opt.splitbelow = true -- open new vertical split bottom
opt.splitright = true -- open new horizontal splits right
opt.showmode = false -- disable "-- INSERT --" mode hint
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert', 'preview'} -- hint???
vim.opt.termguicolors = true        -- enabl 24-bit RGB color
-- neovide setting
if vim.g.neovide then
	vim.opt.guifont = "FiraCode Nerd Font"
	-- vim.opt.linespace = 0
	vim.g.neovide_transparency = 0.75
	vim.g.neovide_floating_blur_amount_x = 2.0
	vim.g.neovide_floating_blur_amount_y = 2.0
	vim.g.neovide_underline_automatic_scaling = true
	vim.g.neovide_hide_mouse_when_typing = true
	-- vim.g.neovide_fullscreen = true
	vim.g.neovide_remember_window_size = true
	vim.g.neovide_input_use_logo = true
	vim.g.neovide_cursor_vfx_mode = "torpedo"

	-- Dynamically Change The Scale At Runtime
	vim.g.neovide_scale_factor = 1.0
	local change_scale_factor = function(delta)
 		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
	end
	vim.keymap.set("n", "<C-=>", function()
 		change_scale_factor(1.25)
	end)
	vim.keymap.set("n", "<C-->", function()
 		change_scale_factor(1/1.25)
	end)
end

-- mouse
opt.mouse = 'a' -- allow the mouse to be used in Nvim
-- right-click menu
vim.cmd.aunmenu("PopUp.How-to\\ disable\\ mouse")
vim.cmd.aunmenu("PopUp.-1-")

-- Searching
opt.incsearch = true -- search as characters are entered
opt.hlsearch = true -- highlight matches
opt.ignorecase = true -- ignore case in searches by default
opt.smartcase = true -- but make it case sensitive if an uppercase is entered

-- clipboard
opt.clipboard = "unnamed" -- use system clipboard
opt.clipboard = "unnamedplus" -- use x11 desktop(need xclip) clipboard, waland install wl-clipboard
-- copy and hilight
vim.api.nvim_create_autocmd({"TextYankPost"}, {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})
