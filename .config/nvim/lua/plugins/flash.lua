return {
  "folke/flash.nvim",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    {
      "s",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
    },
    {
      "S",
      mode = { "n", "o", "x" },
      function()
        require("flash").treesitter()
      end,
    },
    {
      "<c-s>",
      mode = { "c" },
      function()
        require("flash").toggle()
      end,
    },
  },
  opts = {
    jump = {
      autojump = true,
    },
  },
}
