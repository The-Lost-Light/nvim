local keymap = vim.keymap

-- keybinding
vim.g.mapleader = " "
keymap.set("", ";", ":")
keymap.set("", "<space>a", "<cmd>Alpha<cr>", {desc = "open Alpha"})
keymap.set("", "<C-N>", "<cmd>bnext<CR>")
keymap.set("", "<C-P>", "<cmd>bprev<CR>")

-- no highlight
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>")

-- spell
keymap.set("", "<LEADER>s", "<cmd>set spell!<CR>")

-- anchor
keymap.set("", "<LEADER><LEADER>", "<cmd>call search(\"<++>\")<CR><cmd>nohlsearch<CR>\"_c4j")

-- switch arrow key in wildmenu
keymap.set("c", "<Up>", [[wildmenumode() ? "<Left>" : "<Up>"]], { expr = true, replace_keycodes = false })
keymap.set("c", "<Down>", [[wildmenumode() ? "<Right>" : "<Down>"]], { expr = true, replace_keycodes = false })
keymap.set("c", "<Left>", [[wildmenumode() ? "<Up>" : "<Left>"]], { expr = true, replace_keycodes = false })
keymap.set("c", "<Right>", [[wildmenumode() ? "<Down>" : "<Right>"]], { expr = true, replace_keycodes = false })

-- skip wrapline 
keymap.set("n", "j", [[v:count ? "j" : "gj"]], {expr = true })
keymap.set("n", "k", [[v:count ? "k" : "gk"]], {expr = true })
keymap.set("n", "<Down>", [[v:count ? "j" : "gj"]], {expr = true })
keymap.set("n", "<Up>", [[v:count ? "k" : "gk"]], {expr = true })

-- shift code
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "<S-Up>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<S-Down>", ":m '<-2<CR>gv=gv")


-- ctrl-c ctrl-v in neovide
-- if vim.g.neovide then
-- 	vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
-- 	keymap.set("n", "<C-s>", ":w<CR>") -- Save
-- 	keymap.set("n", "<C-x>", "+x") -- Cut
-- 	keymap.set("v", "<C-c>", "\"+y") -- Copy
-- 	keymap.set("n", "<C-v>", "\"+P") -- Paste normal mode
-- 	keymap.set("v", "<C-v>", "\"+P") -- Paste visual mode
-- 	keymap.set("c", "<C-v>", "<C-R>+") -- Paste command mode
-- 	keymap.set("i", "<C-v>", "<ESC>l\"+Pli") -- Paste insert mode
-- end

-- Allow clipboard copy paste in neovim
-- vim.g.neovide_input_use_logo = 1
-- keymap.set("", "<C-v>", "+p<CR>")
-- keymap.set("!", "<C-v>", "<C-R>+")
-- keymap.set("t", "<C-v>", "<C-R>+")
-- keymap.set("v", "<C-v>", "<C-R>+")

