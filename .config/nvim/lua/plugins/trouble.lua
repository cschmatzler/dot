return {
	"folke/trouble.nvim",
	cmd = { "TroubleToggle", "Trouble" },
	keys = {
		{ "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix" },
		{ "<leader>xx", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Diagnostics" },
	},
	opts = {
		auto_open = false,
		use_diagnostic_signs = true,
	},
}
