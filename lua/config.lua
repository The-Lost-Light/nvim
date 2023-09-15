local opt = vim.opt

-- General
opt.syntax = "ON" -- disable when nvim-treesitter work
opt.confirm = true
opt.formatoptions = "jcroqlnt" -- tcqj
-- opt.autochdir = true

-- Tab
opt.tabstop = 4 -- number of visual spaces per TAB
opt.softtabstop = 4 -- number of spacesin tab when editing
opt.shiftwidth = 4 -- insert 4 spaces on a tab
opt.expandtab = false -- use spaces replace tab

-- UI config
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.scrolloff = 5
opt.concealcursor = "nc"
opt.breakindent = true
opt.smartindent = true
opt.fillchars = "eob: " -- replace "~" to blank
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true -- enabe 24-bit RGB color
opt.winblend = 25
opt.pumblend = 25
opt.inccommand = "split"

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
opt.clipboard = "unnamedplus" -- use x11 desktop(need xclip) clipboard, wayland install wl-clipboard

-- -- git root
-- local function get_git_root()
--     local dot_git_path = vim.fn.finddir(".git", ".;")
--     return vim.fn.fnamemodify(dot_git_path, ":h")
-- end
-- vim.api.nvim_create_user_command("CdGitRoot", function()
--     vim.api.nvim_set_current_dir(get_git_root())
-- end, {})
