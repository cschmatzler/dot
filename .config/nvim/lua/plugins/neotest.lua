return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"jfpedroza/neotest-elixir",
	},
	keys = {
		{ "<leader>tc", [[<cmd>:lua require("neotest").run.run()<cr>]] },
		{ "<leader>tf", [[<cmd>:lua require("neotest").run.run(vim.fn.expand("%"))<cr>]] },
		{ "<leader>to", [[<cmd>:lua require("neotest").output.open({ enter = true })<cr>]] },
		{ "<leader>ts", [[<cmd>:lua require("neotest").summary.toggle()<cr>]] },
	},
	config = function()
		require("neotest").setup {
			adapters = {
				require "neotest-elixir",
			},
		}
	end,
}
