return {
  -- Elixir
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "elixir",
        "heex",
        "eex",
      })
    end,
  },
  {
    "elixir-tools/elixir-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("elixir").setup({
        nextls = {
          enable = true,
          spitfire = true,
          init_options = {
            experimental = {
              completions = {
                enable = true,
              },
            },
          },
        },
        credo = {},
        elixirls = { enable = false },
      })
    end,
  },
  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "jfpedroza/neotest-elixir",
    },
    opts = {
      adapters = {
        ["neotest-elixir"] = {},
      },
    },
  },
  -- Svelte
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "svelte" })
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        svelte = {},
      },
    },
  },
  -- Markdown
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {},
      },
    },
  },
}
