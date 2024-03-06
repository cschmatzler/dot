return {
	-- Vue
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "vue" })
			end
		end,
	},
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				volar = {},
			},
		},
	},

	-- UnoCSS
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				unocss = {},
			},
		},
	},

	-- Markdown
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				markdown = {},
			},
		},
	},
}
