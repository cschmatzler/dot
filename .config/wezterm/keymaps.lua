local wezterm = require("wezterm")

return {
	{ key = "Enter", mods = "ALT", action = wezterm.action.SplitHorizontal({}) },
	{ key = "w", mods = "ALT", action = wezterm.action.CloseCurrentPane({ confirm = false }) },
	{ key = "LeftArrow", mods = "ALT", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "RightArrow", mods = "ALT", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "h", mods = "ALT", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "l", mods = "ALT", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "[", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "]", mods = "ALT", action = wezterm.action.ActivatePaneDirection("Right") },
	{ key = "t", mods = "ALT", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
	{
		key = "p",
		mods = "ALT",
		action = wezterm.action.SpawnCommandInNewTab({
			args = { "/opt/homebrew/bin/fish", "-l", "-c ~/.scripts/open-project" },
		}),
	},
	{ key = "p", mods = "SHIFT|ALT", action = wezterm.action.ActivateCommandPalette },
}
