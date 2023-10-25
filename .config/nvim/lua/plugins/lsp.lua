return {
  {
    "Wansmer/symbol-usage.nvim",
    event = "LspAttach",
    setup = function()
      require("symbol-usage").setup({
        filetypes = {
          elixir = {
            symbol_request_pos = "start",
          },
        },
      })
    end,
  },
}
