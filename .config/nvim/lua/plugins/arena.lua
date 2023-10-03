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
  config = true,
}
