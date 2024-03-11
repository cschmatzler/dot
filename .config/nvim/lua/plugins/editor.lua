return {
	{ "nvim-neo-tree/neo-tree.nvim", enabled = false },
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{ "<leader>e", "<cmd>Oil<cr>", desc = "Files" },
		},
		opts = {
			view_options = {
				show_hidden = true,
			},
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			config = function()
				require("telescope").load_extension("fzf")

				return {
					file_ignore_patterns = {
						"target/**/*",
					},
				}
			end,
		},
	},
	{
		"mbbill/undotree",
		keys = {
			{
				"<leader>cu",
				vim.cmd.UndotreeToggle,
				desc = "Undotree",
			},
		},
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		keys = {
			{
				"<leader>gg",
				function()
					require("neogit").open()
				end,
				desc = "neogit",
			},
		},
		opts = {
			integrations = {
				diffview = true,
			},
		},
	},
}
