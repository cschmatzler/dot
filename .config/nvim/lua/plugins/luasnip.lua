return {
  "L3MON4D3/LuaSnip",
  event = "InsertEnter",
  config = function()
    local ls = require "luasnip"

    ls.setup {
      history = true,
      region_check_events = "InsertEnter",
      delete_check_events = "TextChanged,InsertLeave",
    }
    require("luasnip.loaders.from_lua").load { paths = "~/.config/nvim/snippets" }

    vim.keymap.set({ "i", "s" }, "<C-q>", function()
      if ls.choice_active() then
        ls.change_choice(1)
      end
    end)
  end,
}
