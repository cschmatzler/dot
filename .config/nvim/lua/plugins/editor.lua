return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "echasnovski/mini.pairs",      enabled = false },
  { "echasnovski/mini.comment",    enabled = false },
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader>e", "<cmd>Oil<cr>", desc = "Files" },
    },
    opts = {
      skip_confirm_for_simple_edits = true,
      experimental_watch_for_changes = true,
      view_options = {
        show_hidden = true,
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
