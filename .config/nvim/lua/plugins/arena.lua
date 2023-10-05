return {
  "dzfrias/arena.nvim",
  event = "BufWinEnter",
  keys = {
    {
      "<leader>b",
      function()
        require("arena").toggle()
      end,
    },
  },
  opts = {
    max_items = 10
  },
}
