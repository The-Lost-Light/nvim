local opt = vim.opt
local g = vim.g

-- General
opt.syntax = "ON" -- disable when nvim-treesitter work
-- opt.hidden = true 
-- opt.autowrite = true -- enable auto write
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.formatoptions = "jcroqlnt" -- tcqj
-- opt.autochdir = true

-- Tab
opt.tabstop = 4 -- number of visual spaces per TAB
opt.softtabstop = 4 -- number of spacesin tab when editing
opt.shiftwidth = 4 -- insert 4 spaces on a tab
opt.expandtab = false -- use spaces replace tab

-- UI config
opt.number = true -- show line number
opt.relativenumber = true -- add numbers to each line on the left side
opt.cursorline = true -- enable highlighting of the current line
opt.scrolloff = 5
opt.concealcursor = "nc"
opt.wrap = true
opt.breakindent = true
opt.smartindent = true
opt.fillchars = "eob: " -- replace "~" to blank
opt.splitbelow = true -- open new vertical split bottom
opt.splitright = true -- open new horizontal splits right
opt.showmode = false -- disable "-- INSERT --" mode hint
opt.termguicolors = true        -- enabl 24-bit RGB color
opt.winblend = 25
opt.pumblend = 25

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false

-- editor
opt.spell = true

-- mouse
opt.mouse = "a" -- allow the mouse to be used in Nvim
-- right-click menu
vim.cmd.aunmenu("PopUp.How-to\\ disable\\ mouse")
vim.cmd.aunmenu("PopUp.-1-")

-- Searching
opt.incsearch = true -- search as characters are entered
opt.hlsearch = true -- highlight matches
opt.ignorecase = true -- ignore case in searches by default
opt.smartcase = true -- but make it case sensitive if an uppercase is entered

-- clipboard
opt.clipboard = "unnamed" -- Sync with system clipboard
opt.clipboard = "unnamedplus" -- use x11 desktop(need xclip) clipboard, waland install wl-clipboard

-- copy and hilight
vim.api.nvim_create_autocmd({"TextYankPost"}, {
	desc = "Highlight on yank",
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			higroup = "Visual",
			timeout = 200,
			on_visual = false
		})
	end
})

-- neovide setting
if g.neovide then
	opt.guifont = "FiraCode Nerd Font,JetBrains Mono,Noto Serif:h16"
	-- g.neovide_transparency = 0.8
	g.neovide_floating_blur_amount_x = 1.5
	g.neovide_floating_blur_amount_y = 1.5
	g.neovide_hide_mouse_when_typing = true
	g.neovide_underline_automatic_scaling = true
	g.neovide_remember_window_size = true
	g.neovide_cursor_animate_in_insert_mode = true
	g.neovide_cursor_animate_command_line = true
	g.neovide_cursor_vfx_mode = "torpedo"
	g.neovide_cursor_vfx_particle_lifetime = 1.5
	g.neovide_cursor_vfx_particle_density = 15.0

	-- only enables IME in input mode and when searching
	local function set_ime(args)
		if args.event:match("Enter$") then
			g.neovide_input_ime = true
		else
			g.neovide_input_ime = false
		end
	end
	local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })
	vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
		group = ime_input,
		pattern = "*",
		callback = set_ime
	})
	vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
		group = ime_input,
		pattern = "[/\\?]",
		callback = set_ime
	})

	-- Dynamically Change The Scale At Runtime
	g.neovide_scale_factor = 1.0
	local change_scale_factor = function(delta)
		g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
	end
	vim.keymap.set("n", "<C-=>", function()
		change_scale_factor(1.1)
	end)
	vim.keymap.set("n", "<C-->", function()
		change_scale_factor(1/1.1)
	end)
end


-- git root
local function get_git_root()
    local dot_git_path = vim.fn.finddir(".git", ".;")
    return vim.fn.fnamemodify(dot_git_path, ":h")
end
vim.api.nvim_create_user_command("CdGitRoot", function()
    vim.api.nvim_set_current_dir(get_git_root())
end, {})