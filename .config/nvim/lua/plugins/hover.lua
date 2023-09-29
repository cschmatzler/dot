return {
	"lewis6991/hover.nvim",
	keys = {
		{ "K", "<cmd>lua require('hover').hover()<cr>", desc = "Hover" },
		{ "<C-h>", "<cmd>lua require('hover').hover()<cr>", mode = "i", desc = "Hover" },
		{ "gK", "<cmd>lua require('hover').hover_select()<cr>" },
	},
	config = function()
		require("hover").setup {
			init = function()
				require "hover.providers.lsp"
				require "hover.providers.jira"
			end,
		}
	end,
}
