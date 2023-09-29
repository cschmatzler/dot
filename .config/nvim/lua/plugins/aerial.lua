return {
	"stevearc/aerial.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-treesitter/nvim-treesitter",
	},
	cmd = { "AerialOpen", "AerialClose", "AerialToggle" },
	keys = {
		{ "<leader>o", "<cmd>AerialToggle<cr>", desc = "Toggle overview" },
	},
	opts = {},
}
