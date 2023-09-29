return {
  "sindrets/diffview.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Open diff" },
    { "<leader>gr", "<cmd>DiffviewOpen origin/main...HEAD<cr>", desc = "Open diff (origin/main)" },
  },
  config = function()
    local diffview = require "diffview"
    local actions = require "diffview.actions"

    diffview.setup {
      show_help_hints = false,
      file_panel = {
        listing_style = "list",
        win_config = {
          position = "left",
          width = 40,
        },
      },
      file_history_panel = {
        win_config = {
          position = "bottom",
          height = 5,
        },
      },
      keymaps = {
        disable_defaults = true,
        file_panel = {
          { "n", "<cr>", actions.select_entry, { desc = "Select entry" } },
          { "n", "]x", actions.next_conflict, { desc = "Conflict forward" } },
          { "n", "[x", actions.prev_conflict, {} },
          { "n", "s", actions.toggle_stage_entry, {} },
          { "n", "S", actions.stage_all, {} },
        },
        view = {
          { "n", "]f", actions.select_next_entry, {} },
          { "n", "[f", actions.select_prev_entry, {} },
          { "n", "<leader>gf", actions.focus_files, {} },
          { "n", "<leader>gco", actions.conflict_choose "ours", {} },
          { "n", "<leader>gct", actions.conflict_choose "theirs", {} },
          { "n", "<leader>gcb", actions.conflict_choose "base", {} },
          { "n", "<leader>gca", actions.conflict_choose "all", {} },
          { "n", "<leader>gcn", actions.conflict_choose "none", {} },
        },
      },
    }
  end,
}
