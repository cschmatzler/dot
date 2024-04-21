local action = require("wezterm").action

return {
	{ key = "c", mods = "SUPER", action = action.CopyTo("Clipboard") },
	{ key = "v", mods = "SUPER", action = action.PasteFrom("Clipboard") },
	{ key = "Enter", mods = "ALT", action = action.SplitHorizontal({}) },
	{ key = "w", mods = "ALT", action = action.CloseCurrentPane({ confirm = false }) },
	{ key = "LeftArrow", mods = "ALT", action = action.ActivateTabRelative(-1) },
	{ key = "RightArrow", mods = "ALT", action = action.ActivateTabRelative(1) },
	{ key = "h", mods = "ALT", action = action.ActivateTabRelative(-1) },
	{ key = "l", mods = "ALT", action = action.ActivateTabRelative(1) },
	{ key = "[", mods = "ALT", action = action.ActivatePaneDirection("Left") },
	{ key = "]", mods = "ALT", action = action.ActivatePaneDirection("Right") },
	{ key = "t", mods = "ALT", action = action.SpawnTab("CurrentPaneDomain") },
	{
		key = "p",
		mods = "ALT",
		action = action.SpawnCommandInNewTab({
			args = { "/opt/homebrew/bin/fish", "-l", "-c ~/.scripts/open-project" },
		}),
	},
	{ key = "p", mods = "SHIFT|ALT", action = action.ActivateCommandPalette },
}
