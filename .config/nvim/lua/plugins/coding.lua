return {
  {
    "hrsh7th/nvim-cmp",
    enabled = false,
    dependencies = {
      "onsails/lspkind-nvim",
    },
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.mapping = cmp.mapping.preset.insert({
        ["<C-y>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
      })

      opts.formatting = {
        format = require("lspkind").cmp_format({
          mode = "symbol",
          max_width = 50,
          symbol_map = { Supermaven = "" },
        }),
      }

      table.insert(opts.sources, { name = "supermaven" })
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
    config = function()
      vim.api.nvim_set_hl(0, "LazyGitBorder", { fg = "#1e66f5" })
    end,
  },
  {
    "supermaven-inc/supermaven-nvim",
    opts = {
      keymaps = {
        accept_suggestion = "<C-y>",
        accept_word = "<Tab>",
      },
    },
  },
}
