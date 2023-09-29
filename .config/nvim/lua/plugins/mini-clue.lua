return {
  "echasnovski/mini.clue",
  config = function()
    local mini_clue = require "mini.clue"

    mini_clue.setup {
      window = {
        delay = 250,
      },
      triggers = {
        { mode = "n", keys = "<Leader>" },
        { mode = "x", keys = "<Leader>" },
        { mode = "i", keys = "<C-x>" },
        { mode = "n", keys = "g" },
        { mode = "x", keys = "g" },
        { mode = "n", keys = "'" },
        { mode = "n", keys = "`" },
        { mode = "x", keys = "'" },
        { mode = "x", keys = "`" },
        { mode = "n", keys = '"' },
        { mode = "x", keys = '"' },
        { mode = "i", keys = "<C-r>" },
        { mode = "c", keys = "<C-r>" },
        { mode = "n", keys = "<C-w>" },
        { mode = "n", keys = "z" },
        { mode = "x", keys = "z" },
        { mode = "n", keys = "]" },
        { mode = "n", keys = "[" },
      },

      clues = {
        mini_clue.gen_clues.builtin_completion(),
        mini_clue.gen_clues.g(),
        mini_clue.gen_clues.marks(),
        mini_clue.gen_clues.registers(),
        mini_clue.gen_clues.windows(),
        mini_clue.gen_clues.z(),
        {
          { mode = "n", keys = "<leader>f", desc = "Find" },
          { mode = "n", keys = "<leader>g", desc = "Git/Grep" },
          { mode = "n", keys = "<leader>gh", desc = "Hunk" },
          { mode = "n", keys = "<leader>h", desc = "Harpoon" },
          { mode = "n", keys = "<leader>j", desc = "Journal" },
          { mode = "n", keys = "<leader>r", desc = "Replace" },
        },
      },
    }
  end,
}
