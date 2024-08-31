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

      table.insert(opts.sources, { name = "supermaven" })
    end,
  },
}
