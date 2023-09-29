local ls = require "luasnip"
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

return {
  s("div", {
    t '<div class="',
    i(1),
    t '">',
    i(2, "Content"),
    t "</div>",
  }),
}
