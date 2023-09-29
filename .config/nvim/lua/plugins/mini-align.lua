return {
	"echasnovski/mini.align",
	event = { "BufNewFile", "BufReadPost" },
	config = function()
		require("mini.align").setup {
			mappings = {
				start = "<leader>a",
				start_with_preview = "<leader>A",
			},
		}
	end,
}
