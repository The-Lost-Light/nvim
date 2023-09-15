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

-- temporary fix the folding bug when use telescope open file (but will cause neo-tree fold)
-- vim.api.nvim_create_autocmd({ "BufEnter" }, {
-- 	pattern = { "*" },
-- 	command = "normal zx zR"
-- })
