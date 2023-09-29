return {
	"catppuccin/nvim",
	as = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup {
			flavour = "latte",
			styles = {
				comments = { "italic" },
			},
			custom_highlights = function(colors)
				return {
					-- cmp
					CmpPmenu = {
						fg = colors.text,
						bg = colors.mantle,
					},
					CmpSelection = {
						fg = colors.base,
						bg = colors.green,
						style = { "bold" },
					},
					CmpDoc = {
						bg = colors.mantle,
					},
					CmpItemAbbr = { fg = colors.text },
					CmpItemAbbrDeprecated = { fg = colors.overlay0, style = { "strikethrough" } },
					CmpItemKind = { fg = colors.blue },
					CmpItemMenu = { fg = colors.overlay0 },
					CmpItemAbbrMatch = { fg = colors.text, style = { "bold" } },
					CmpItemAbbrMatchFuzzy = { fg = colors.text, style = { "bold" } },
					CmpItemKindModule = { fg = colors.base, bg = colors.mauve },
					CmpItemKindInterface = { fg = colors.base, bg = colors.mauve },
					CmpItemKindField = { fg = colors.base, bg = colors.rosewater },
					CmpItemKindProperty = { fg = colors.base, bg = colors.rosewater },
					CmpItemKindKeyword = { fg = colors.base, bg = colors.rosewater },
					CmpItemKindText = { fg = colors.base, bg = colors.lavender },
					CmpItemKindFunction = { fg = colors.base, bg = colors.sky },
					CmpItemKindStruct = { fg = colors.base, bg = colors.maroon },
					CmpItemKindClass = { fg = colors.base, bg = colors.maroon },
					CmpItemKindVariable = { fg = colors.base, bg = colors.peach },
					CmpItemKindFolder = { fg = colors.base, bg = colors.teal },
					CmpItemKindFile = { fg = colors.base, bg = colors.teal },
					CmpItemKindSnippet = { fg = colors.base, bg = colors.pink },

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
		}

		vim.cmd.colorscheme "catppuccin"
	end,
}
