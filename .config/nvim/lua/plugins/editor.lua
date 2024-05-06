return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "echasnovski/mini.pairs", enabled = false },
  { "echasnovski/mini.comment", enabled = false },
  { "nvim-telescope/telescope.nvim", enabled = false },
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
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader>ff", "<cmd>FzfLua git_files<cr>", desc = "Find GitFiles (Root Dir)" },
      { "<leader>fF", "<cmd>FzfLua files<cr>", desc = "Find Files (Root Dir)" },
      { "<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
      { "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Grep (Root Dir)" },
      { "<leader>ss", "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Goto Symbol" },
      { "<leader>sS", "<cmd>FzfLua lsp_workspace_symbols<cr>", desc = "Goto Symbol (Workspace)" },
    },
    config = function()
      require("fzf-lua").setup({
        "telescope",
        oldfiles = {
          cwd_only = true,
        },
      })

      require("fzf-lua").register_ui_select()
    end,
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
