local action = require("wezterm").action

return {
	{ key = "c", mods = "SUPER", action = action.CopyTo("Clipboard") },
	{ key = "v", mods = "SUPER", action = action.PasteFrom("Clipboard") },
	{ key = "Enter", mods = "CTRL|SHIFT", action = action.SplitHorizontal({}) },
	{ key = "w", mods = "CTRL|SHIFT", action = action.CloseCurrentPane({ confirm = false }) },
	{ key = "LeftArrow", mods = "CTRL|SHIFT", action = action.ActivateTabRelative(-1) },
	{ key = "RightArrow", mods = "CTRL|SHIFT", action = action.ActivateTabRelative(1) },
	{ key = "h", mods = "CTRL|SHIFT", action = action.ActivateTabRelative(-1) },
	{ key = "l", mods = "CTRL|SHIFT", action = action.ActivateTabRelative(1) },
	{ key = "[", mods = "CTRL|SHIFT", action = action.ActivatePaneDirection("Left") },
	{ key = "]", mods = "CTRL|SHIFT", action = action.ActivatePaneDirection("Right") },
	{ key = "t", mods = "CTRL|SHIFT", action = action.SpawnTab("CurrentPaneDomain") },
	{
		key = "p",
		mods = "CTRL|SHIFT",
		action = action.SpawnCommandInNewTab({
			args = { "/opt/homebrew/bin/fish", "-l", "-c ~/.scripts/open-project" },
		}),
	},
}
