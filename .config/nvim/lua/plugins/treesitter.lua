return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter-context", opts = { max_lines = 3 } },
      "RRethy/nvim-treesitter-textsubjects",
    },
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = {
          "bash",
          "css",
          "elixir",
          "git_config",
          "git_rebase",
          "gitcommit",
          "gitignore",
          "heex",
          "jsonnet",
          "lua",
          "markdown",
          "markdown_inline",
          "regex",
          "ruby",
          "rust",
          "terraform",
          "vim",
          "vimdoc",
          "vue",
          "yaml",
        },
        highlight = { enable = true },
        indent = { enable = false },
        context_commentstring = { enable = true, enable_autocmd = false },
        textsubjects = {
          enable = true,
          prev_selection = ",",
          keymaps = {
            ["."] = "textsubjects-smart",
            [";"] = "textsubjects-container-outer",
          },
        },
      }
    end,
  },
}
