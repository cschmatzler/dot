return {
  "gbprod/substitute.nvim",
  keys = {
    { "<leader>s", [[<cmd>:lua require("substitute").operator()<cr>]], desc = "Substitute" },
    { "<leader>ss", [[<cmd>:lua require("substitute").line()<cr>]], desc = "Substitute line" },
  },
  opts = {},
}
