return {
	"andweeb/presence.nvim",
	event = "VeryLazy",
	opts = {
		neovim_image_text   = "hjkl",
		main_image          = "file",
		buttons             = true,
		show_time           = true,

		editing_text        = "沒有在編輯 %s",
		file_explorer_text  = "沒有開啟 %s",
		git_commit_text     = "沒有在提交存儲庫",
		plugin_manager_text = "沒有在管理插鍵",
		reading_text        = "沒有在看 %s",
		workspace_text      = "不在 %s 裡",
		line_number_text    = "第 %s 行, 總共 %s 行"
	}
}