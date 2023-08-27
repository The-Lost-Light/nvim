return {
	"shellRaining/hlchunk.nvim",
	event = "InsertEnter",
	opts = {
		indent = {
			use_treesitter = true,
			chars = { "│", "¦", "┆", "┊"}
		},
		line_num = {
			use_treesitter = true,
			style = "#ffcc66"
		}
	}
}
