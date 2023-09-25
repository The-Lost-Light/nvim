local opt = vim.opt
local g = vim.g

opt.guifont = "FiraCode Nerd Font,JetBrains Mono,Noto Serif:h16"
-- g.neovide_transparency = 0.8
g.neovide_floating_blur_amount_x = 1.5
g.neovide_floating_blur_amount_y = 1.5
g.neovide_hide_mouse_when_typing = true
g.neovide_underline_automatic_scaling = true
g.neovide_refreash_rate = 60
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
