return {
  {
    "elixir-tools/elixir-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup({
        nextls = {
          enable = true,
          on_attach = function(client, bufnr)
            require("lazyvim.plugins.lsp.keymaps").on_attach(client, buffer)
          end,
        },
        credo = {},
        elixirls = {
          enable = false,
        },
      })
    end,
  },
}
