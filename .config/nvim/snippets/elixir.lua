local ls = require "luasnip"
local s = ls.snippet
local c = ls.choice_node
local i = ls.insert_node
local t = ls.text_node

return {
  s("ii", {
    t "IO.inspect(",
    i(1),
    c(1, {
      t "",
      t "label: ",
    }),
    t ")",
  }),

  s("ec", {
    t "use ExUnit.Case",
    c(1, {
      t "",
      t ", async: true",
    }),
  }),

  s("heex", {
    t { '~H"""', "\t" },
    i(1),
    t { "\t", '"""' },
  }),

  s("doc", {
    t { '@doc """', "\t" },
    i(1),
    t { "\t", '"""' },
  }),
}
