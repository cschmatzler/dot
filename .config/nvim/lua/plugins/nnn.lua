return {
  "luukvbaal/nnn.nvim",
  cmd = { "NnnExplorer", "NnnPicker" },
  keys = {
    { "<leader>n", "<cmd>NnnPicker %:p<cr>", desc = "nnn" },
  },
  opts = {
    picker = {
      cmd = "nnn -H",
      fullscreen = false,
    },
  },
}
