return {
  -- Disable built-in plugins
  { "akinsho/bufferline.nvim", enabled = false },

  -- Colorscheme
  {
    "catppuccin/nvim",
    as = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "latte",
        styles = {
          comments = { "italic" },
        },
        custom_highlights = function(colors)
          return {
            -- Telescope
            TelescopeBorder = {
              fg = colors.mantle,
              bg = colors.mantle,
            },
            TelescopeMatching = {
              fg = colors.blue,
            },
            TelescopeNormal = {
              bg = colors.mantle,
            },
            TelescopePromptBorder = {
              fg = colors.surface0,
              bg = colors.surface0,
            },
            TelescopePromptNormal = {
              fg = colors.text,
              bg = colors.surface0,
            },
            TelescopePromptPrefix = {
              fg = colors.flamingo,
              bg = colors.surface0,
            },
            TelescopePreviewTitle = {
              fg = colors.base,
              bg = colors.green,
            },
            TelescopePromptTitle = {
              fg = colors.base,
              bg = colors.red,
            },
            TelescopeSelection = {
              fg = colors.text,
              bg = colors.surface0,
              style = { "bold" },
            },
            TelescopeSelectionCaret = {
              fg = colors.flamingo,
            },
          }
        end,
        integrations = {
          aerial = true,
          gitsigns = true,
          harpoon = true,
          illuminate = true,
          lsp_trouble = true,
          mason = true,
          mini = true,
          neogit = true,
          neotest = true,
          neotree = true,
          noice = true,
          notify = true,
          octo = true,
          treesitter = true,
          treesitter_context = false,
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "underline" },
              hints = { "underline" },
              warnings = { "underline" },
              information = { "underline" },
            },
          },
        },
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- mini-starter
  {
    "echasnovski/mini.starter",
    opts = function(_, opts)
      opts.header = ""
    end,
  },
}
