-- keybinding
vim.g.mapleader = "/"
vim.keymap.set("n", "<space>", "/")
vim.keymap.set("n", "<leader>wq", ":wq<cr>")
-- skip wrapline 
vim.keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
vim.keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

-- ctrl-c ctrl-v in neovide
if vim.g.neovide then
	vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
 	vim.keymap.set('n', '<C-s>', ':w<CR>') -- Save
 	vim.keymap.set('n', '<C-x>', '+x') -- Cut
 	vim.keymap.set('v', '<C-c>', '"+y') -- Copy
 	vim.keymap.set('n', '<C-v>', '"+P') -- Paste normal mode
 	vim.keymap.set('v', '<C-v>', '"+P') -- Paste visual mode
 	vim.keymap.set('c', '<C-v>', '<C-R>+') -- Paste command mode
 	vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
end
-- Allow clipboard copy paste in neovim
vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap('', '<C-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<C-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<C-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<C-v>', '<C-R>+', { noremap = true, silent = true})
