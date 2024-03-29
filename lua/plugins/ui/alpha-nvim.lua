return {
	"goolord/alpha-nvim",
	-- event = "VimEnter",
	opts = function()
		local dashboard = require("alpha.themes.dashboard")
		local logo = [[
███╗   ███╗ ██████╗ ███╗   ██╗ ██████╗ 
████╗ ████║██╔═══██╗████╗  ██║██╔═══██╗
██╔████╔██║██║   ██║██╔██╗ ██║██║   ██║
██║╚██╔╝██║██║   ██║██║╚██╗██║██║   ██║
██║ ╚═╝ ██║╚██████╔╝██║ ╚████║╚██████╔╝
╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ 
		]]
		dashboard.section.header.val = vim.split(logo, "\n")
		dashboard.section.buttons.val = {
			dashboard.button("f", "󰈞 " .. " Find file", ":Telescope find_files<CR>"),
			dashboard.button("n", " " .. " New file", ":ene<CR>"),
			dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles<CR>"),
			dashboard.button("g", " " .. " Find text", ":Telescope live_grep<CR>"),
			dashboard.button("c", " " .. " Config", ":e $MYVIMRC<CR>"),
			dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load()<cr>]]),
			dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
			dashboard.button("q", " " .. " Quit", ":qa<CR>")
		}
		dashboard.opts.layout[1].val = 8
		dashboard.opts.layout[3].val = 4
		return dashboard
	end,
	config = function(_, dashboard)
		require("alpha").setup(dashboard.config)

		vim.api.nvim_create_autocmd("User", {
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = " \n⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end
}
