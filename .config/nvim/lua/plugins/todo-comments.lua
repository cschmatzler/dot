return {
  "folke/todo-comments.nvim",
  dependencies = {
    "folke/trouble.nvim",
  },
  cmd = { "TodoTrouble", "TodoTelescope" },
  event = "VeryLazy",
  keys = {
    {
      "]t",
      function()
        require("todo-comments").jump_next()
      end,
    },
    {
      "[t",
      function()
        require("todo-comments").jump_prev()
      end,
    },
    { "<leader>xc", "<cmd>TodoTrouble<cr>", desc = "Comments" },
    { "<leader>xt", "<cmd>TodoTrouble keywords=TODO,FIXME<cr>", desc = "Comments (TODO/FIXME)" },
  },
  config = true,
}
