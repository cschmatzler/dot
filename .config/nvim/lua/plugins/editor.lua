return {
	-- TODO: Remove when https://github.com/rcarriga/nvim-notify/pull/253 gets merged.
	{ "ls-devs/nvim-notify" },
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
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			-- Always sort by name, not by type
			sort_function = function(a, b)
				return a.path < b.path
			end,
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
				},
			},
			event_handlers = {
				{
					event = "file_opened",
					handler = function()
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
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
}
