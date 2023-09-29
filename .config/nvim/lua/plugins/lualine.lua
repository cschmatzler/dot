return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    {
      "stevearc/aerial.nvim",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
        "nvim-treesitter/nvim-treesitter",
      },
    },
  },
  event = "VeryLazy",
  config = function()
    local icons = require("config").icons
    local function harpoon_mark()
      local Marked = require "harpoon.mark"
      local path = vim.fn.expand "%"
      local success, index = pcall(Marked.get_index_of, path)
      if success and index and index > 0 then
        return string.format("⥤  %d", index)
      end
    end

    require("lualine").setup {
      options = {
        theme = "catppuccin",
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
        },
        lualine_c = {
          "filename",
          {
            harpoon_mark,
            cond = function()
              return harpoon_mark() ~= nil
            end,
          },
          "aerial",
        },
        lualine_x = { "filetype" },
        lualine_y = {
          "branch",
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
          },
        },
        lualine_z = { "progress", "location" },
      },
    }
  end,
}
