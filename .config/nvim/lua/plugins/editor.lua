return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
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
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")

        return {
          file_ignore_patterns = {
            "target/**/*",
          },
        }
      end,
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
