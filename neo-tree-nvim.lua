return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim"
	},
	event = { "VimEnter" },
	opts = {
		auto_clean_after_session_restore = true,
		close_if_last_window = true,
		hide_root_node = true,
		sort_case_insensitive = true,
		source_selector = {
			show_scrolled_off_parent_node = true
		},
		default_component_configs = {
			name = {
				highlight_opened_files = true
			}
		},
		window = {
			auto_expand_width = true
		},
		filesystem = {
			filtered_items = {
				visible = true,
				force_visible_in_empty_folder = true,
				hide_dotfiles = false
			},
			group_empty_dirs = true,
			follow_current_file = {
				enabled = true,
				leave_dirs_open = true
			},
			use_libuv_file_watcher = true
		},
		buffers = {
			show_unloaded = true
		},
		document_symbols = {
			follow_cursor = true
		}
	}
}
