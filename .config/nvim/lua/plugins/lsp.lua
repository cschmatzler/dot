return {
  "neovim/nvim-lspconfig",
  dependencies = {
    { "folke/neodev.nvim", config = true },
    "jose-elias-alvarez/null-ls.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "b0o/SchemaStore.nvim",
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local function on_attach(client, bufnr)
      require("config.lsp-keymap").setup(client, bufnr)
    end

    local null_ls = require "null-ls"
    null_ls.setup {
      sources = {
        null_ls.builtins.code_actions.eslint_d,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylua,
      },
    }

    local servers = {
      jsonls = {
        settings = {
          json = {
            schemas = require("schemastore").json.schemas(),
            validate = { enable = true },
          },
        },
      },
      jsonnet_ls = {},
      lua_ls = {},
      taplo = {},
      terraformls = {},
      tailwindcss = {
        handlers = {
          ["tailwindcss/getConfiguration"] = function(_, _, params, _, bufnr, _)
            vim.lsp.buf_notify(bufnr, "tailwindcss/getConfigurationResponse", { _id = params._id })
          end,
        },
        settings = {
          includeLanguages = {
            typescript = "javascript",
            heex = "html",
            eelixir = "html",
            elixir = "html",
          },
          tailwindCSS = {
            lint = {
              cssConflict = "warning",
              invalidApply = "error",
              invalidConfigPath = "error",
              invalidScreen = "error",
              invalidTailwindDirective = "error",
              invalidVariant = "error",
              recommendedVariantOrder = "warning",
            },
            experimental = {
              classRegex = {
                [[class= "([^"]*)]],
                [[class: "([^"]*)]],
                '~H""".*class="([^"]*)".*"""',
                '~F""".*class="([^"]*)".*"""',
              },
            },
            validate = true,
          },
        },
        filetypes = {
          "html",
          "heex",
          "elixir",
          "javascript",
          "typescript",
        },
      },
      tsserver = {
        filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascriptreact" },
        single_file_support = false,
        settings = {
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = "literal",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = false,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
          javascript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
        },
      },
      volar = {},
      yamlls = {
        settings = {
          yaml = {
            schemas = require("schemastore").yaml.schemas(),
            keyOrdering = false,
          },
        },
      },
    }

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }

    local options = {
      on_attach = on_attach,
      capabilities = capabilities,
      flags = {
        debounce_text_changes = 150,
      },
    }

    for server, opts in pairs(servers) do
      opts = vim.tbl_deep_extend("force", {}, options, opts or {})
      require("lspconfig")[server].setup(opts)
    end
  end,
}
