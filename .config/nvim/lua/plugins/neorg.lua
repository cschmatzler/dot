return {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = { "Neorg" },
	keys = {
		{ "<leader>jt", "<cmd>Neorg journal today<cr>", desc = "Today's journal" },
	},
	config = function()
		require("neorg").setup {
			load = {
				["core.clipboard.code-blocks"] = {},
				["core.completion"] = {
					config = {
						engine = "nvim-cmp",
					},
				},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes",
							journal = "~/journal",
						},
					},
				},
				["core.esupports.hop"] = {},
				["core.esupports.indent"] = {},
				["core.esupports.metagen"] = {},
				["core.keybinds"] = {
					config = {
						default_keybinds = false,
						hook = function(keybinds)
							keybinds.remap_event("norg", "n", "<CR>", "core.esupports.hop.hop-link")
						end,
					},
				},
				["core.journal"] = {
					config = {
						journal_folder = "",
						strategy = "flat",
						workspace = "journal",
					},
				},
				["core.promo"] = {},
			},
		}
	end,
}
