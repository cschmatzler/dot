local wezterm = require("wezterm")

return {
	{ key = "Enter", mods = "SHIFT|CTRL", action = wezterm.action.SplitHorizontal({}) },
	{ key = "w", mods = "SHIFT|CTRL", action = wezterm.action.CloseCurrentPane({ confirm = false }) },
	{ key = "w", mods = "SHIFT|CTRL|ALT", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
	{ key = "LeftArrow", mods = "SHIFT|CTRL", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "RightArrow", mods = "SHIFT|CTRL", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "h", mods = "SHIFT|CTRL", action = wezterm.action.ActivateTabRelative(-1) },
	{ key = "l", mods = "SHIFT|CTRL", action = wezterm.action.ActivateTabRelative(1) },
	{ key = "[", mods = "SHIFT|CTRL", action = wezterm.action.ActivatePaneDirection("Left") },
	{ key = "]", mods = "SHIFT|CTRL", action = wezterm.action.ActivatePaneDirection("Right") },
	{
		key = "p",
		mods = "SHIFT|CTRL",
		action = wezterm.action.SpawnCommandInNewTab({
			args = { "/opt/homebrew/bin/fish", "-l", "-c ~/.scripts/open-project" },
		}),
	},
}
