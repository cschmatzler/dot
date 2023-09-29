return {
	"NeogitOrg/neogit",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim", "sindrets/diffview.nvim" },
	cmd = { "Neogit" },
	keys = {
		{ "<leader>gs", "<cmd>Neogit<cr>", desc = "Status" },
	},
	opts = {
		kind = "replace",
		disable_hint = true,
		disable_context_highlighting = true,
		commit_popup = {
			kind = "tab",
		},
		disable_commit_confirmation = true,
		integrations = {
			diffview = true,
		},
	},
}
