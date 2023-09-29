return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  cmd = { "Telescope" },
  keys = {
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Find recent files" },
    { "<leader>gb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Grep buffer" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>gp", "<cmd>Telescope live_grep<cr>", desc = "Grep in project" },
    {
      "<leader>gw",
      ":lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>')})<cr>",
      desc = "Grep word under cursor",
    },
    {
      "<leader>gW",
      ":lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cWORD>')})<cr>",
      desc = "Grep WORD under cursor",
    },
    {
      "<leader>fs",
      "<cmd>Telescope lsp_document_symbols<cr>",
      desc = "Find document symbol",
    },
  },
  config = function()
    require("telescope").setup {
      defaults = {
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.65,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        set_env = { ["COLORTERM"] = "truecolor" },
        winblend = 0,
        file_ignore_patterns = {
          "assets/vendor/*",
          ".git/",
          "charts/",
          "compiled/",
          "deps/",
          "_build/",
          ".elixir_ls/",
          ".elixir_tools/",
        },
        mappings = {
          i = { ["<c-t>"] = require("trouble.providers.telescope").open_with_trouble },
          n = { ["<c-t>"] = require("trouble.providers.telescope").open_with_trouble },
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
      extensions = {
        gitmoji = {
          action = function(entry)
            vim.api.nvim_buf_set_text(0, 0, 0, 0, 0, { entry.value.value })
          end,
        },
      },
    }

    require("telescope").load_extension "fzf"
  end,
}
