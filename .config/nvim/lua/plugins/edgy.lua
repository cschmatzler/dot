return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  opts = {
    animate = { enabled = false },
    bottom = {
      { ft = "qf", title = "Quickfix", size = { height = 0.3 } },
      { ft = "Trouble", title = "Trouble", size = { height = 0.3 } },
      { ft = "help", title = "Documentation", size = { height = 0.75 } },
      { ft = "glowpreview", title = "Rendered Output", size = { height = 0.5 } },
    },
    right = {
      { ft = "nnn", title = "Files", size = { width = 0.3 } },
      { ft = "harpoon", title = "Harpoons", size = { width = 0.3 } },
      { ft = "aerial", title = "Overview", size = { width = 0.2 } },
      { ft = "neotest-summary", title = "Tests", size = { width = 0.4 } },
      { ft = "spectre_panel", title = "Spectre", size = { width = 0.4 } },
    },
  },
}
