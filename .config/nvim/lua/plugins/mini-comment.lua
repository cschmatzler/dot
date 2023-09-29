return {
	"echasnovski/mini.comment",
	event = "BufReadPost",
	config = function()
		require("mini.comment").setup {
			mappings = {
				comment = "<leader>cc",
				commment_line = "<leader>cC",
				textobject = "",
			},
		}
	end,
}
