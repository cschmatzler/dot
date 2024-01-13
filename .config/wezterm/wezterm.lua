local wezterm = require("wezterm")

return {
	check_for_updates = false,
	default_prog = { "/opt/homebrew/bin/fish", "-l" },
	color_scheme = "Catppuccin Latte",
	font = wezterm.font("FiraCode Nerd Font Mono"),
	font_size = 17,
	line_height = 1.2,
	window_padding = {
		left = 48,
		right = 48,
		bottom = 0,
		top = 0,
	},
	use_fancy_tab_bar = false,
	tab_max_width = 64,
	hide_tab_bar_if_only_one_tab = true,
	native_macos_fullscreen_mode = false,
	keys = {
		{
			key = "Enter",
			mods = "SHIFT|CTRL",
			action = wezterm.action.SplitHorizontal({}),
		},
		{
			key = "w",
			mods = "SHIFT|CTRL",
			action = wezterm.action.CloseCurrentPane({ confirm = false }),
		},
		{ key = "w", mods = "SHIFT|CTRL|ALT", action = wezterm.action.CloseCurrentTab({ confirm = false }) },
		{ key = "LeftArrow", mods = "SHIFT|CTRL", action = wezterm.action.ActivateTabRelative(-1) },
		{ key = "RightArrow", mods = "SHIFT|CTRL", action = wezterm.action.ActivateTabRelative(1) },
		{ key = "]", mods = "SHIFT|CTRL", action = wezterm.action.ActivatePaneDirection("Left") },
		{ key = "[", mods = "SHIFT|CTRL", action = wezterm.action.ActivatePaneDirection("Right") },
		{
			key = "p",
			mods = "SHIFT|CTRL",
			action = wezterm.action.SpawnCommandInNewTab({
				args = { "/opt/homebrew/bin/fish", "-l", "-c ~/.scripts/open-project" },
			}),
		},
	},
}
