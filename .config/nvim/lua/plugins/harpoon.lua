return {
	"theprimeagen/harpoon",
	keys = {
		{ "<leader>ha", "<cmd>:lua require('harpoon.mark').add_file()<cr>", desc = "Add current file" },
		{ "<leader>hl", "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "List harpoons" },
		{ "<C-j>", "<cmd>:lua require('harpoon.ui').nav_file(1)<cr>", mode = { "n", "x", "i" }, desc = "Harpoon 1" },
		{ "<C-l>", "<cmd>:lua require('harpoon.ui').nav_file(2)<cr>", mode = { "n", "x", "i" }, desc = "Harpoon 2" },
		{ "<C-u>", "<cmd>:lua require('harpoon.ui').nav_file(3)<cr>", mode = { "n", "x", "i" }, desc = "Harpoon 3" },
	},
}
