return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "luukvbaal/nnn.nvim",
    cmd = { "NnnExplorer", "NnnPicker" },
    keys = {
      { "<leader>e", "<cmd>NnnPicker %:p<cr>", desc = "nnn" },
    },
    opts = {
      picker = {
        cmd = "nnn -H",
        fullscreen = false,
      },
    },
  },
}
