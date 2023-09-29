return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    {
      "]h",
      function()
        if vim.wo.diff then
          return "]h"
        end
        vim.schedule(function()
          require("gitsigns").next_hunk()
        end)
        return "<Ignore>"
      end,
      desc = "Hunk forward",
    },
    {
      "[h",
      function()
        if vim.wo.diff then
          return "[h"
        end
        vim.schedule(function()
          require("gitsigns").prev_hunk()
        end)
        return "<Ignore>"
      end,
      desc = "Hunk last",
    },
    {
      "<leader>gc",
      function()
        require("gitsigns").toggle_current_line_blame()
      end,
      desc = "Toggle line blame",
    },
    {
      "<leader>ghs",
      "<cmd>Gitsigns stage_hunk<cr>",
      silent = true,
      desc = "Stage hunk",
    },
    {
      "<leader>ghs",
      function()
        require("gitsigns").stage_hunk { vim.fn.line ".", vim.fn.line "v" }
      end,
      mode = { "x" },
      desc = "Stage hunk",
    },
    {
      "<leader>ghr",
      "<cmd>Gitsigns reset_hunk<cr>",
      silent = true,
      desc = "Reset hunk",
    },
    {
      "<leader>ghr",
      function()
        require("gitsigns").reset_hunk { vim.fn.line ".", vim.fn.line "v" }
      end,
      mode = { "x" },
      desc = "Reset hunk",
    },
  },
  opts = {
    current_line_blame_opts = {
      delay = 100,
    },
    yadm = {
      enable = true,
    },
  },
}
