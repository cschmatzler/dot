return {
  -- Disable built-in plugins
  { "akinsho/bufferline.nvim", enabled = false },

  -- mini-starter
  {
    "echasnovski/mini.starter",
    opts = function(_, opts)
      opts.header = ""
    end,
  },
}
