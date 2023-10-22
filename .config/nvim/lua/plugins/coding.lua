return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      local function t(str)
        return vim.api.nvim_replace_termcodes(str, true, true, true)
      end

      opts.mapping = cmp.mapping.preset.insert({
        ["<C-y>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
        ["<Tab>"] = function()
          if luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            vim.api.nvim_feedkeys(t("<Tab>"), "n", true)
          end
        end,
      })
    end,
  },
  {
    "echasnovski/mini.move",
    event = "BufReadPost",
    opts = {
      mappings = {
        left = "<M-Left>",
        right = "<M-Right>",
        down = "<M-Down>",
        up = "<M-Up>",
        line_left = "<M-Left>",
        line_right = "<M-Right>",
        line_down = "<M-Down>",
        line_up = "<M-Up>",
      },
    },
  },
}
