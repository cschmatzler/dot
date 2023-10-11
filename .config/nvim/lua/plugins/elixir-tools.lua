return {
  "elixir-tools/elixir-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local elixir = require "elixir"
    local elixirls = require "elixir.elixirls"

    elixir.setup {
      nextls = {
        enable = true,
        on_attach = function(client, bufnr)
          require("config.lsp-keymap").setup(client, bufnr)
        end,
      },
      credo = {},
      elixirls = {
        enable = true,
        tag = "v0.17.0",
        settings = elixirls.settings {
          dialyzerEnabled = false,
          enableTestLenses = false,
        },
        on_attach = function(client, bufnr)
          require("config.lsp-keymap").setup(client, bufnr)
        end,
      },
    }
  end,
}
