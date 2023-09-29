return {
  "echasnovski/mini.surround",
  event = { "BufNewFile", "BufReadPost" },
  config = function()
    require("mini.surround").setup {
      mappings = {
        add = "<leader>csa",
        delete = "<leader>csd",
        find = "<leader>csf",
        find_left = "<leader>csF",
        highlight = "<leader>csh",
        replace = "<leader>csr",
        update_n_lines = "<leader>csn",
        suffix_last = "<leader>cl",
        suffix_next = "<leader>cn",
      },
    }
  end,
}
